import 'screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.cyan,
          title: const Center(child:Text("Dice Roller")),) ,
        body:const Screen(Colors.blue,Colors.red),
      ),
    );
  }
}