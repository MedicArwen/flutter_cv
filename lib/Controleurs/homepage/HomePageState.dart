import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercv/Controleurs/homepage/MyPageSlider.dart';
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
  GlobalKey<MyPageSliderState> _slider = GlobalKey();


  void _onItemTapped(int index) {
    setState(() {
      _slider.currentState.setPage(index);
    });
  }
  @override
  Widget build(BuildContext context)
  {
    List<Widget> _widgetOptions = <Widget>
    [
    Container(child: MyInfoGenerale(context)),
    Container(child: MyFormations(context)),
    Container(child: MyExperience(context)),
    Container(child: MyLoisirs(context))
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
                      Positioned(
                      top: 0,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                       child:Image.asset(
                        'images/fond_homepage.png',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        fit: BoxFit.fitWidth,
                      ),
                      ),
                      Positioned(
                        top: 10,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height-110,
                          child:MyPageSlider(key:_slider,pages:_widgetOptions,duration:Duration(seconds: 1))),
                      MyNavigationBar(_onItemTapped)
                    ]
                  )
              )]
          )
      )
  );

  }

  @override
  void initState() {

  }


}
