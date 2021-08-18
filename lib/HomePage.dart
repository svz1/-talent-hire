


import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart' ; 

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.white,
       title: Icon(Icons.air,color: Colors.green,),
       centerTitle: true,
       leading: Icon(Icons.arrow_back,color: Colors.grey,),
       actions: [
         Container(
           padding: EdgeInsets.only(right:15),
           child: Icon(Icons.menu,color:Colors.grey))
       ]

     ),
     body: ListView(
       children: [
         Stack(
           children: [
             Container(
               alignment: Alignment.center,
               height: 100,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(7),
                 
               ),
               child: Text("Get Coaching",style: GoogleFonts.lato(fontSize:20,fontWeight: FontWeight.bold),),
             ),
             Container(
               margin: EdgeInsets.only(left: 20,right: 20,top:80),
               decoration:BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(7),
               ),
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children:[
                   Container(
                     padding: EdgeInsets.all(20),
                     child: Column(
                       children:[Text("You Have",style: GoogleFonts.lato(color: Colors.grey)),
                       SizedBox(
                         height: 0,
                       ),
                       Text("206",style: GoogleFonts.lato(fontSize: 50),)]
                     ),
                   ), 

                   Container(
                     margin: EdgeInsets.only(right: 10),
                     padding: EdgeInsets.all(10),
                     alignment:Alignment.center,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(7),
                       color: Colors.green[100]
                     ),
                   child: Text("Buy More",style:GoogleFonts.lato(color:Colors.green)
                   ),
                   ),
                   
                 ]

               ),
             ),

           ],
         ),
         Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             
            
             children:[
              
              Container(
                padding: EdgeInsets.all(30),
                child: Text("MY COACHES",style:GoogleFonts.lato(color:Colors.grey),
              )),
            Container(
              margin: EdgeInsets.only(right:20),
              child:Text("VIEW PAST SESSIONS",style:GoogleFonts.lato(color:Colors.green) ,
            )
            )  
              ] 
           ),
         ),

        GridView.count(
          crossAxisCount: 2,
                children: [
          _gcard("hey", "status"),
        ],


        ),
       ],
     )
      
    );
  }
}



Widget _gcard(String name,String status,){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
      
    ),
    elevation: 7,
    child: Column(
      children: [
        Stack(
          children: [
          Container(
            height: 60,
            width:60,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(30),
              image: DecorationImage(image: NetworkImage("https://t3.ftcdn.net/jpg/02/36/48/86/360_F_236488644_opXVvD367vGJTM2I7xTlsHB58DVbmtxR.jpg"),),
            ),
            child: Text("data"),
          )
          ],
        )
      ],
    ),
   
  ) ; 

}
      
   
 


