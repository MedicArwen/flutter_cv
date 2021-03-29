import 'package:flutter/material.dart';

class MyBigButtonNavigationBar extends StatelessWidget
{
  Function onTapped;

  MyBigButtonNavigationBar(this.onTapped);

  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(bottom: 50),

     child:ClipOval(child:
     Material(color: Colors.white,
       child: InkWell(splashColor: Colors.red, child: SizedBox(width: 100, height: 100, child: Icon(Icons.home, size: 80,)),
           onTap:this.onTapped
       ),
     ),
     ),);
  }


}

