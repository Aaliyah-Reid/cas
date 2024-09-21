import 'package:pocketbase/pocketbase.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NewUser {
  String username = '';
  String email;
  String password;
  String confirmPassword;
  String name = '';
  bool visibility = true;

  NewUser(this.email, this.password, this.confirmPassword);

  get body {
    return <String, dynamic>{
      "email": email,
      "emailVisibility": true,
      "password": password,
      "passwordConfirm": confirmPassword,
    };
  }

  @override
  String toString() {
    // TODO: implement toString
    return "NewUser{'email' : $email , 'password' , $password , 'cp' : $confirmPassword}";
  }
}

class Auth {
  late AuthStore store;
  late PocketBase pb;

  get db =>pb;

  Future<void> initStore() async {
    final prefs = await SharedPreferences.getInstance();

    store = AsyncAuthStore(
      save: (String data) async => prefs.setString('pb_auth', data),
      initial: prefs.getString('pb_auth'),
    );
  }

  Future<void> init() async {
    await initStore();
    print("Store is initialized");

    pb = PocketBase('http://127.0.0.1:8090',authStore: store);
  }


  Future<void> createUser(NewUser user) async {
    final record = await pb.collection('users').create(body: user.body);
  }

  Future<bool> signIn(email, password) async {
    final authData = await pb.collection('users').authWithPassword(
          email,
          password,
        );
    return (pb.authStore.isValid);
    
  }

  Future<void> createMessage (String message) async {
    final body = <String, dynamic>{
    "sentMsg": message,
    "receivedMsg": ""
};


final record = await pb.collection('Messages').create(body: body);
  }
}
