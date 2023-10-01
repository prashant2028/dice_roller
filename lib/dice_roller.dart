import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}
class _DiceRollerState extends State<DiceRoller>{
  var currentDice = "assets/images/dice-5.png";
  void rolldice(){
    setState(() {
      final currentDiceNumber =Random().nextInt(6)+1;
      currentDice= "assets/images/dice-$currentDiceNumber.png";

    });
  }
  @override
  Widget build(context){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Image.asset(currentDice,width:200),
        TextButton(
            style:TextButton.styleFrom(foregroundColor: Colors.white,
              padding: const EdgeInsets.all(28),
            ),
            onPressed: rolldice,
            child:const Text(" Roll Dice"))
      ],
    );
  }
}
