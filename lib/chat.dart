import 'dart:math';
import 'dart:convert';

import 'package:cas/chatProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:get_it/get_it.dart';
import 'package:cas/auth/auth.dart';
import 'package:provider/provider.dart';


enum ChatType {
  defaultType,
}


String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}


class ChatPage extends StatefulWidget {

  const ChatPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ChatPageState();
  }

}

class _ChatPageState extends State<ChatPage> {
  final auth = GetIt.I.get<Auth>();


  @override
  void initState() {
  print("mgmmg");

    // TODO: implement initState
    final auth = GetIt.I.get<Auth>();
    
    super.initState();
  }

 final List<types.Message> _messages = [];
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');
  final _chatbbot = const types.User(id:"10-223");

  @override
  Widget build(BuildContext context) {

  
    return Scaffold(
      body: ChangeNotifierProvider(
        create : (context) => ChatProvider(),
        child: Consumer<ChatProvider> (
          builder: (context, chatter , child) {

            if(chatter.q==false){
            chatter.subscribe("s");

            }
  
            return Chat(messages: chatter.messages, onSendPressed: chatter.handleSendPressed, user: _user);
          }

        )
        
    ),);
  }

  

 
 

}