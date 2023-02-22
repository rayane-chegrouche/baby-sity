import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
import 'firstscren.dart';


class Auth extends  StatelessWidget {
  const Auth ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream:FirebaseAuth.instance.authStateChanges(),
      builder:(context,Snapshot){
      if(Snapshot.hasData){
        return homepage();
      }else{
      return Acuiel();
      }
      }
      )
    );
  }
}