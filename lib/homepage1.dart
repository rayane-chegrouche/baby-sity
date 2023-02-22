import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homepage1 extends  StatefulWidget {
  const homepage1({super.key});

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  int slect=0;

static const List<Widget> _widget=<Widget>[
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    
    bottomNavigationBar:Container(color:Colors.white,child :Padding(padding: const EdgeInsets.symmetric(horizontal: 15.0 ,vertical: 20)
       ,child: GNav(
         gap:2 ,
        padding:  EdgeInsets.all(16),
         onTabChange: (value) {
           setState(() {
            slect=value;
           });
         },
         backgroundColor:Colors.white,
          color: Colors.black,
          activeColor: Colors.pink,
          tabBackgroundColor: Color.fromARGB(255, 228, 169, 189),
          tabs:const[
            GButton(icon: Icons.home,),
           GButton(icon: Icons.groups,),
           GButton(icon: Icons.chat,),
            GButton(icon: Icons.notifications,),
             GButton(icon: Icons.person,),
            
          ]
         ,
          selectedIndex: slect,
           
           

          
    )))
       
      
        
     
        
        
        
      
    );
  }
}