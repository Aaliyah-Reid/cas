import 'dart:ffi';

import 'package:cas/chat.dart';
import 'package:cas/home.dart';
import 'package:cas/login.dart';
import 'package:cas/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cas/onboarding.dart';
import 'package:cas/auth/auth.dart';
import 'package:get_it/get_it.dart';
import 'package:toastification/toastification.dart';
import 'package:provider/provider.dart';
import 'package:cas/chatProvider.dart';
final getIt = GetIt.instance;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ));

  await register();
    
 runApp(
    ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: MyApp(),
    ),
  );
}

Future<void> register() async{ 
    GetIt.I.registerSingleton<Auth>(Auth());
    GetIt.I.get<Auth>().init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CAS',
          theme: ThemeData(
      
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: GetIt.I.get<Auth>().pb.authStore.isValid ? HomePage() : LoginPage()
      ),
    );
  }
}

