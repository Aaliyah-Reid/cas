package main

import (
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"log"
	"net/http"
	"os"

	"github.com/pocketbase/pocketbase"
	"github.com/pocketbase/pocketbase/apis"
	"github.com/pocketbase/pocketbase/core"
)

func main() {

	app := pocketbase.New()

	// serves static files from the provided public dir (if exists)
	app.OnBeforeServe().Add(func(e *core.ServeEvent) error {
		e.Router.GET("/*", apis.StaticDirectoryHandler(os.DirFS("./pb_public"), false))
		return nil
	})

	app.OnRecordAfterCreateRequest("Messages", "articles").Add(func(e *core.RecordCreateEvent) error {
		type Responsed struct {
			Response string
		}

		record, err := app.Dao().FindRecordById("Messages", e.Record.Id)
		if err != nil {
			return err
		}
		endpoint := fmt.Sprintf("http://localhost:5000/%v", e.Record.GetString("sentMsg"))
		var res Responsed

		resp, err := http.Get(endpoint)

		if err == nil {
			defer resp.Body.Close()

			data, err1 := io.ReadAll((resp.Body))

			if err1 == nil {
				json.Unmarshal(data, &res)
			}

		} else {
			fmt.Println(errors.New("didn't work"))
		}

		record.Set("receivedMsg", res.Response)

		if err := app.Dao().SaveRecord(record); err != nil {
			return err
		} else {
			fmt.Println("Record Saved")
		}
		return nil
	})

	if err := app.Start(); err != nil {
		log.Fatal(err)
	}

}
