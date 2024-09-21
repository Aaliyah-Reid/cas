from flask import Flask , request
from openai import OpenAI



client = OpenAI(
  organization='org-G06caz0KYlvEMh13s8mdp7IG',
  project='proj_qRyU0hXLZimSkaR8aTy1LlHl',
  api_key="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",
)

app = Flask(__name__)


@app.route('/<req>',methods=["GET"])
def root(req):
    print(req)
    message = getMessage(req)
    return {"response":message}


@app.route('/test',methods=["GET"])
def root1():
    return {"response":"hello"}


@app.route('/chat/situation/<type>/<message>',methods=['GET'])
def chatSituation(type,message):

    context : str = f"""
        Your name is CAS, you are an AI powered social anxiety interaction assistant
        which empowers individuals with social anxiety to navigate social situations
        more comfortably. You simulate a human conversation based around a current situation. Try to keep your responses
        short and to the point. The current situation is ${type} and the current message is ${message}

"""
    response = client.chat.completions.create(
    messages=[{
        "role": "user",
        "content": context,
    }],
    model="gpt-4o-mini",
    )
    return  {"response":response.choices[0].message.content}



def getMessage(message: str) -> str:

    background = f"""

        Your name is CAS, you are an AI powered social anxiety interaction assistant
        which empowers individuals with social anxiety to navigate social situations
        more comfortably. You simulate a human conversation so keep your responses
        short.  The message from the user is as follows ${message}
"""
    response = client.chat.completions.create(
    messages=[{
        "role": "user",
        "content": background,
    }],
    model="gpt-4o-mini",
    )
    return response.choices[0].message.content




app.run()








