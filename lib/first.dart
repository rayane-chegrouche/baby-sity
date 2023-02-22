import 'package:flutter/material.dart';

class first extends StatelessWidget{
  const first({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
 body:ListView(children:[Column (  children:
 
  [
 
  
   Container(
 
   height: 400,
   width:600,
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/imag1.jpg"))),
        ), 
        Container(margin:EdgeInsets.all(10)
        
        , child:Text("BabySity",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.pink)),) 
,
Container(
  margin: EdgeInsets.all(10),
 child:Text("In Baby sity you can search for a nanny or nursery school ",style:TextStyle(fontSize:13,)),)
  ,Container (child:Text(" to take care of your child while you are at work",style:TextStyle(fontSize:13)),)

    
     
    
      ]
      
    
 )]));   
    
  }
}