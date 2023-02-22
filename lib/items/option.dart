import 'package:flutter/material.dart';
class Menu extends StatelessWidget {
final color;
final number;
final text;

Menu({required this.color,required this.number,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),

      height: 110,
      width: 160,

      decoration: BoxDecoration(
          border: Border.all(color: color,),
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      // decoration: BoxDecoration(borderRadius:  BorderRadius.all(Radius.circular(1))),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [  Text(number,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w600)),
      Text(text,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400))
    ],
  ),
    );
  }
}
