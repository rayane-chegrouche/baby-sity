
import 'package:flutter/material.dart';

class nextscren extends StatelessWidget{
  const nextscren({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     
       backgroundColor: Colors.white,
 body:ListView (children: [Column ( children: 
 
  [
 
  
   Container(
 
   height: 400,
   width:600,
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage("images/imag2.jpg"))),
        )  
          , Container(margin:EdgeInsets.all(10)
        
        , child:Text("BabySity",style:TextStyle(fontSize:25,fontWeight:FontWeight.bold,color:Colors.pink)),) 
,Container (child:Text("You can find a nanny whether you teach your child ",style:TextStyle(fontSize:13,)))
,Container (margin:EdgeInsets.all(10),child:Text("or take care of him anywhere ",style:TextStyle(fontSize:13,))
)
 
    
  ]
        
        )]));
        
  
       

    
  }
}