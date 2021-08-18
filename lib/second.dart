


import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart' ; 

class second extends StatelessWidget {
  const second({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar: AppBar(
       elevation: 0,
       backgroundColor: Colors.white,
       title: Icon(Icons.air,color: Colors.green,),
       centerTitle: true,
       leading: Icon(Icons.arrow_back,color: Colors.blue,),
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
          
          Wrap(
            runSpacing: 20,
            children: [
              _gcard("Samantha", "active","https://us.123rf.com/450wm/fizkes/fizkes2007/fizkes200701872/152319944-close-up-headshot-portrait-of-smiling-vietnamese-young-woman-look-at-camera-talk-on-video-call-profi.jpg?ver=6"),
              _gcard("Fred", "away","https://t3.ftcdn.net/jpg/02/36/48/86/360_F_236488644_opXVvD367vGJTM2I7xTlsHB58DVbmtxR.jpg"),
              _gcard("Nicole", "away","https://media.istockphoto.com/photos/close-up-portrait-of-brunette-woman-picture-id1154642632?k=6&m=1154642632&s=612x612&w=0&h=YTiNxRGupHJpMqQRu7Xh-U976mur5fp-cM_WEczpx04="),
              _gcard("Joe", "active","https://images.unsplash.com/photo-1566753323558-f4e0952af115?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
            
            ],
          )
          

         

          

     

 
          

         
         
        ] )
     ); } }


     Widget _gcard(String name,String status,String url){
  return Container(
    margin: EdgeInsets.only(left:20,right: 10),
    height: 200,
    width: 140,

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white
    ),
    
    
    
   
      child: Column(
        children: [

          Container(
           margin: EdgeInsets.only(top: 20),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: NetworkImage(url),
              fit: BoxFit.cover),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Text(name,style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: 15),),

          ),
          Container(
            padding: EdgeInsets.all(0),
            child: Text(status,style: GoogleFonts.lato(fontWeight: FontWeight.normal,fontSize: 15,color:status=="active"?Colors.green:Colors.grey),),

          ),

          Container(
            
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 24),
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:status=="active"?Colors.green:Colors.grey,


            ),
            child:Text("Request",style: TextStyle(color: Colors.white),) ,
          )
          
         
         


          
        ],
      ),
    
   
  ) ; 

}
      
   
 