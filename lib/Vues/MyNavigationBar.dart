
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/NavigationBar/MySmallButtonNavigationBar.dart';

import 'NavigationBar/MyBigButtonNavigationBar.dart';

class MyNavigationBar extends StatelessWidget {
  Function onItemTapped;

  MyNavigationBar(this.onItemTapped);

  @override
  Widget build(BuildContext context) {

    return
      Container(
        color: Colors.black,
      child:
      Container(
          height: 80,
         decoration: BoxDecoration(color: Color(0xFFFA9917),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
      ),
          child:
              SizedBox(height: 80,
          child:
          OverflowBox(
            maxHeight: 150,
            child:
          Row(
      children:[
        Container(width: 20,),
           MyBigButtonNavigationBar(()=>{print("tap Home"),onItemTapped(0)}),
            MySmallButtonNavigationBar(Icons.school,"Formations",()=>{print("tap scool"),onItemTapped(1)}),
            MySmallButtonNavigationBar(Icons.assessment,"Experience",()=>{print("tap expe"),onItemTapped(2)}),
            MySmallButtonNavigationBar(Icons.music_note,"Loisirs",()=>{print("tap loisir"),onItemTapped(3)}),
        MySmallButtonNavigationBar(Icons.contact_mail,"Contacts",()=>{print("tap contact"),onItemTapped(4)})
    ]) ,
      )
      )
      )
    );

  }
  }
