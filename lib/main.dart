import 'package:flutter/material.dart';
import 'package:talenthire/HomePage.dart';
import 'package:talenthire/second.dart';
import 'package:talenthire/trial.dart';

void main()=>runApp(MyApp()) ; 

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home:second(),
      
    );
  }
}