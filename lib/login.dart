import 'package:baby_sity/createacounte.dart';
import 'package:flutter/material.dart';
import 'forgetpassowerde.dart';
import 'createacounte.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
final _emailController = TextEditingController();
final _passowerdController =TextEditingController();


bool _obscureText=true;
Future Login ()async{

  showDialog(context: context, builder:(context) {
    return const Center(
      child:  CircularProgressIndicator(
     valueColor:AlwaysStoppedAnimation<Color>(Colors.pink),
   )
    );
  },) ; 
  try{
 await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _emailController.text.trim(),
   password: _passowerdController.text.trim());

  }on FirebaseException catch(e){
  
  showerrormessage (e.code);
  }

  
 }
 //: worong email 
 void showerrormessage ( String message){
    showDialog(context: context, builder:(context) {
      return  AlertDialog( 
        backgroundColor: Colors.pink,
       title: Center(child: Text("$message",style: TextStyle(color: Colors.white))));
       
    },);
 }
//wrong passowerd


  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passowerdController.dispose();
  }

  Widget build(BuildContext context) {
   GlobalKey<FormState> fromstate =new GlobalKey<FormState>();
    return Scaffold(
     
      
    
    body :ListView(children:[
      Column(children: [
Container(margin:EdgeInsets.only(top:100)
        , child:Text("BabySity",style:TextStyle(
          fontSize:30,
          fontWeight:FontWeight.bold,
          color:Colors.pink)),)
         , SizedBox(height: 20,),
          Container(margin:EdgeInsets.only(top:20),child:
        Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
        )
        ,SizedBox(height: 20,)
         , Form(key: fromstate,child: Container(margin: EdgeInsets.all(20),child:Column(children: [
          TextFormField(
            controller: _emailController,
            validator: (val){
              if(val!.length >100){
                return"email can'to be larger than 100 letter";
              }
               if(val.length<9){
                return"email can'to be larger than 8letter";
              }
              return null;
            },
          
            decoration: InputDecoration(prefixIcon: Icon(Icons.email),
     hintText: "Email", border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink))
      ),
            )
         , SizedBox(height: 20,),
         TextFormField(
          controller: _passowerdController,
          validator: (val){
              if(val!.length >100){
                return"passowerd can'to be larger than 100 letter";
              }
               if(val.length<9){
                return"passowerd can'to be larger than 8letter";
              }
              return null;
            },
          obscureText: _obscureText,
         
          decoration: InputDecoration( prefixIcon: Icon(Icons.lock),
          suffixIcon: GestureDetector(onTap: (){
            setState(() {
              _obscureText=!_obscureText;
            });
            
          }
          ,child:Icon( _obscureText?Icons.visibility:Icons.visibility_off)
          ,),
     hintText: "Passowerd", border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink))
 ),

 
         )

         ],)))
         ,
      
Container(margin:EdgeInsets.only(left: 200),child:InkWell( onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context){
     return homepage();  }));},child:Text("forget Pasowerd",style:TextStyle(color: Colors.pink,fontSize:13,fontWeight:FontWeight.bold)),
)),
         SizedBox(height: 20,),
Container( child:GestureDetector(onTap:(){
  login();
   
},

  child:Container(width:150,height:50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                child:Center( child: Text("Login ",style:TextStyle(fontSize:15,color: Colors.white,fontWeight:FontWeight.bold)), 

                ))
)) 
 ,


SizedBox(height: 20,),
 Column(children:[Row(mainAxisAlignment: MainAxisAlignment.center,children: [ Text("if dont have acounte  please",style:TextStyle(fontSize:15)),InkWell(
    onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (context){
     return createacoun();  }));},child: Text("Click here",style:TextStyle(fontSize:15,color:Colors.pink)))])])




      ])
    ]));
  }}