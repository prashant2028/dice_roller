import 'package:dice_game/dice_roller.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Screen extends StatelessWidget{
  const Screen(this.startColor,this.endColor,{super.key});
  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  final Color startColor;
  final Color endColor;

  @override
  Widget build(context){
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(colors:[startColor,endColor],
          begin:startAlignment,
          end: endAlignment,
        ),
      ),

      child: const Center(
        child: DiceRoller(),
      ),
    );

  }
}