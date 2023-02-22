import 'package:flutter/material.dart';

class newpassorde extends StatefulWidget {
  const newpassorde({super.key});

  @override
  State<newpassorde> createState() => _newpassordeState();
}

class _newpassordeState extends State<newpassorde> {
  var Pasowerd;
 GlobalKey<FormState> fromstate =new GlobalKey<FormState>();
bool _obscureText=true;
bool _obscureTex=true;
  @override
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


         , Container(margin:EdgeInsets.only(top:20),child:
        Text("create new passowerde",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
        )
         , SizedBox(height: 20,)
         , Form(key: fromstate,child: Container(margin: EdgeInsets.all(20),child:Column(children: [
          TextFormField(
            validator: (val){
              if(val!.length >100){
                return"passowerd can'to be larger than 100 letter";
              }
               if(val.length<9){
                return"passowerd can'to be larger than 8letter";
              }
              return null;
            },
            obscureText:_obscureTex,
           
            decoration: InputDecoration(prefixIcon: Icon(Icons.lock),
     hintText: "new passowrde",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink)),
      suffixIcon: GestureDetector(onTap: (){
            setState(() {
              _obscureTex=! _obscureTex;
            });
            
          }
        ,child:Icon( _obscureTex?Icons.visibility:Icons.visibility_off)
          )
     ),onSaved: (val){
  Pasowerd=val;

 },
      )
     , SizedBox(height: 20,),
     TextFormField(
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
           hintText: "copy passowrde",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(width:1,color:Colors.pink)),
          suffixIcon: GestureDetector(onTap: (){
            setState(() {
              _obscureText=! _obscureText;
            });
            
          }
        ,child:Icon( _obscureText?Icons.visibility:Icons.visibility_off)
          )
    ),
      onSaved: (val){
  Pasowerd=val;

 },
      )]))),
       SizedBox(height: 20,),
       Container(child: MaterialButton(
 onPressed:(){},
 child:Text("save",style:TextStyle(color: Colors.white,fontSize:20,fontWeight:FontWeight.bold)),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
 color: Colors.pink,
  height: 50,minWidth: 200,
 ))
 
      ])]),
    );
  
  }
}