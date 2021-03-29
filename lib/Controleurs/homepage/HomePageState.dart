import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercv/Vues/MyExperience.dart';
import 'package:fluttercv/Vues/MyFormations.dart';
import 'package:fluttercv/Vues/MyInfoGenerale.dart';
import 'package:fluttercv/Vues/MyLoisirs.dart';
import 'package:fluttercv/Vues/MyNavigationBar.dart';

import 'HomePage.dart';
String currentPage = "default";
int selectedPage = 0;
class HomePageState extends State<HomePage>
{
  // liste du menu

  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
    });
  }
  @override
  Widget build(BuildContext context)
  {
    List<Widget> _widgetOptions = <Widget>
    [
    Container(child: MyInfoGenerale(context)),
    Container(child: MyFormations()),
    Container(child: MyExperience()),
    Container(child: MyLoisirs())
    ];
    print("HomePageState:Build:lapolice:"+Theme.of(context).textTheme.headline4.fontFamily);
  Widget widgetCurrentPage = _widgetOptions[selectedPage];
  print("page selectionnée:"+selectedPage.toString());
  return MaterialApp
    (
      title: 'Mon CV',
      home: SafeArea(
        top:false,
          bottom: false,
          child: Column(
            children:
            [
          //    Expanded(child:
          Container(
            height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFF49B9E9),
                  child:Stack
                    (
                    alignment: Alignment.bottomCenter,
                    children:
                    [
                      Image.asset(
                        'images/fond_homepage.png',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.fill,
                      ),
                      widgetCurrentPage,
                      MyNavigationBar(_onItemTapped)
                    ]
                  )
          ),
             // ),

            ],
          )
      )
  );
  }

}
