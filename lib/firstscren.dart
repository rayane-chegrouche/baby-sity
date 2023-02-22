import 'package:baby_sity/first.dart';
import 'package:baby_sity/nextscren.dart';
import 'threescen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'login.dart';



class Acuiel extends  StatefulWidget {
  const Acuiel({super.key});

  @override
  State<Acuiel> createState() => _AcuielState();
}

class _AcuielState extends State<Acuiel> {
  PageController _controller=PageController();
  bool onlastap=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
      body:Stack(children:[PageView(
        controller: _controller,
        onPageChanged: (index){
          setState(() {
            onlastap=(index==2);
          });
        },
         children: [
          first(),
          nextscren(),
          threescren(),
          
        ],
  
        
      ),
         Container(
        alignment: Alignment(0,0.89),
          
       child:Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
           children: [
  //this skip
          GestureDetector(
            
            onTap: (() {
              _controller.jumpToPage(2);
            }),
            child:Container(width: 60,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                child:Center( child: Text("skip",style:TextStyle(fontSize:13,color: Colors.white)),
          )),),
          //this skip
        SmoothPageIndicator( controller: _controller,count:3,
        effect:  SlideEffect( dotColor:  Colors.grey,  
      activeDotColor:  Colors.pink   )
        ),
        //this donne
        onlastap?
        GestureDetector(
            onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context){
            return login();
             }));
            }),
            child:Container(width: 60,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
              child:Center( child: Text("Donne",style:TextStyle(fontSize:13,color: Colors.white))))
        ):
         
          GestureDetector(
           
            onTap: (() {
              _controller.nextPage(duration: Duration(microseconds: 500), curve: Curves.easeIn,);
            }),
             child:Container(width: 60,height: 30,decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
           child:Center( child: Text("next",style:TextStyle(fontSize:13,color: Colors.white)),)
          ),)
           ],
      
       
       
         ),),
      ],
    ),
    );
  }
}