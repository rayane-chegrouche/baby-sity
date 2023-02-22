import 'package:baby_sity/forgetpassowerde.dart';
import 'package:baby_sity/login.dart';
import 'package:flutter/material.dart';
import 'firstscren.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import'homepage1.dart';
import'homepage2.dart';
import 'Auth.dart';

void main()async  {


  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        ),
        routes: {
        "homepag":(context){
          return homepage();
        },
       " homepag2":(context){
          return homepage2();
        },
       
        },
         debugShowCheckedModeBanner: false,
      home: const Auth(),
    );
  }
}


