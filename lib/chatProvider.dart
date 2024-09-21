import 'dart:math';
import 'dart:convert';


import 'package:cas/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;


String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}


class ChatProvider extends ChangeNotifier {
  final _chatbbot = const types.User(id:"10-223");

  final List<types.Message> messages = [];
  final auth = GetIt.I.get<Auth>();

  bool q = false;



  void subscribe(String topic) {
    q = true;
    auth.pb.collection('Messages').subscribe(
      '*',
      (e) {

        if(e.record!.getDataValue("receivedMsg")!=""){
           print(e.record!.getDataValue("receivedMsg"));

        final textMessage = types.TextMessage(
      author: _chatbbot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: e.record!.getDataValue("receivedMsg"),
    );


        messages.insert(0, textMessage);
        notifyListeners();


        }
       
      },
    );
  }

  void s() {
    print("Hello");
  }

  // void answer 

  void handleSendPressed(types.PartialText message) {
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

    if(message.text!=""){
        auth.createMessage(message.text);
    }
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    addMessage(textMessage);
  }

  void addMessage(types.Message message) {
        messages.insert(0,message);
        notifyListeners();
  }
}
