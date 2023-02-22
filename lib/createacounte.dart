import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'homepage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class createacoun extends StatefulWidget {
  const createacoun({super.key});
 
  @override
  State<createacoun> createState() => _createacounState();
}

class _createacounState extends State<createacoun> {
final _emailController = TextEditingController();
final _passowerdController =TextEditingController();
final _usenameController =TextEditingController();

  bool _obscureText=true;
  var  Country;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();
  
Future signup()async{

  showDialog(context: context, builder:(context) {
    return const Center(
      child:  CircularProgressIndicator(
     valueColor:AlwaysStoppedAnimation<Color>(Colors.pink),
   )
    );
  },) ; 
  try{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text.trim(),
   password: _passowerdController.text.trim());
  }
   on FirebaseException catch(e){
    showerrormessage (e.code);
    
    } 
  

  

  
 }
//show error
void showerrormessage ( String message){
    showDialog(context: context, builder:(context) {
       return   AlertDialog(
        backgroundColor: Colors.pink, 
       title: Center(child: Text("$message",style: TextStyle(color: Colors.white),)
       
       ),);
    },);
 } 


  @override
 

  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passowerdController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
body:
 ListView(children:[Column(mainAxisAlignment: MainAxisAlignment.spaceAround, 
         children:[
        Container(margin:EdgeInsets.only(top:100)
        , child:Text("BabySity",style:TextStyle(
          fontSize:30,
          fontWeight:FontWeight.bold,
          color:Colors.pink)),)
         , SizedBox(height: 20,)


          ,Container(margin:EdgeInsets.only(top:20),child:
        Text("create acounte",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
        )
         , SizedBox(height: 10,)
        
         , Form(key: formstate
          ,child: Container(margin: EdgeInsets.all(20),child:Column(children: [
          TextFormField(
        controller: _usenameController,
            validator: (val){
         
              if(val!.length >100){
                return"username can'to be larger than 100 letter";
              }
               if(val.length<2){
                return"username can'to be larger than 30 letter";
              }
              return null;
            },
        
            decoration: InputDecoration(prefixIcon: Icon(Icons.person),
     hintText: "username",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink))
     ),
       
      )
      
      ,SizedBox(height: 20,),
     TextFormField(
     controller: _emailController,
       validator: (  val){
              if(val!.length >100){
                return"email can'to be larger than 100 letter";
              }
               if(val.length<2){
                return"email can'to be larger than 2 letter";
              }
              return null;
            },
      
            decoration: InputDecoration(prefixIcon: Icon(Icons.email),
           
     hintText: "email",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink))
      ),
      
      ),
      SizedBox(height: 20,),
         TextFormField(
          controller: _passowerdController,
           validator: (val){
              if(val!.length >100){
                return"passowerd can'to be larger than 100 letter";
              }
               if(val.length>9){
                return"passowerd can'to be larger than 8letter";
              }
              return null;
            },
           
        obscureText: _obscureText,
          decoration: InputDecoration( prefixIcon: Icon(Icons.lock),
          suffixIcon: GestureDetector(onTap: (){
            setState(() {
              _obscureText=! _obscureText;
            });
            
          }
          ,child:Icon( _obscureText?Icons.visibility:Icons.visibility_off)
          ,),
     hintText: "Passowerd",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink))
 ),

         )


        ]))),
       
       Column(children:[Row(mainAxisAlignment: MainAxisAlignment.center,children: [ Text("identification card",style:TextStyle(fontSize:17,)),
       SizedBox(width: 10,),
       MaterialButton(
 onPressed:(){},
 
 
 child:Text("image",style:TextStyle(color: Colors.white,fontSize:13,fontWeight:FontWeight.bold)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
 color: Colors.pink,
  height: 30,minWidth: 70,
 )
 ])]),
SizedBox(height:5,),
 Column(children:[Container(margin:EdgeInsets.only(left:46),child:
 Row(
children:[
 
 Radio(
    
    value: "Guardians",
    groupValue: Country, 
  onChanged: (val){
    setState(() {
      Country=val;
    });
     
    print(Country);
   
  },
)
 ,Text("Guardians"),
]
 ))
,
Container(margin:EdgeInsets.only(left: 46),child:
 Row(
children:[
 
 Radio(
    
    value: "Babysettre",
    groupValue: Country, 
  onChanged: (value){
    setState(() {
      Country=value;
    });
     
    print(Country); //s
    
  }
)
 ,Text("Babysettre"),
]
 ),
  ) ]),
 
SizedBox(height: 5,),
Container(child:GestureDetector(
  onTap:() {
  signup();
    
  }
   
   
  
 
 , child:Container(width:150,height:50,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                child:Center( child: Text("signup",style:TextStyle(fontSize:15,color: Colors.white,fontWeight:FontWeight.bold)), 

                ))
))
 

      ])]),
    );
  
  }
}






















