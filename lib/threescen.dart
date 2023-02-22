import 'package:flutter/material.dart';

class threescren extends StatelessWidget{
  const threescren({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.white,

 body:ListView(children: [Column (  children: 
 
  [
 
  
   Container(
 
   height: 400,
   width:400,
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/imag3.jpg"))),

        ) ,
                Container(margin:EdgeInsets.all(10)
        
       , child:Text("BabySity",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.pink)),)  
    ,Container(margin:EdgeInsets.all(5),
 child :Text("In Baby Sity, you can view information about nannies",style:TextStyle(fontSize:13,)),)
,Container (margin:EdgeInsets.all(5),child: Text("and you can also communicate and know its geographical",style:TextStyle(fontSize:13,)))
,Container (margin:EdgeInsets.all(5),child:Text(" its geographical locationin addition tothe price and",style:TextStyle(fontSize:13,)))
,Container (margin:EdgeInsets.all(5),child:Text("ratings that you get.",style:TextStyle(fontSize:13)))
   
  ]
      
    
 )     
        
   ]));
  }}