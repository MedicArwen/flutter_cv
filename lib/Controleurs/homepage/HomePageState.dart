import 'package:flutter/material.dart';
import 'package:fluttercv/Controleurs/homepage/MyPageSlider.dart';
import 'package:fluttercv/Vues/Elements/AnimatedBackground.dart';
import 'package:fluttercv/Vues/MyContacts.dart';
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

  List<Widget> listePages;

  void _onItemTapped(int index) {
    setState(() {
      selectedPage = index;
      _slider.currentState.setPage(index);
    });
  }

    @override
    Widget build(BuildContext context)
    {
      print("HomePageState:Build:");
      print("page selectionnée:" + selectedPage.toString());
      double widthScreen = MediaQuery.of(context).size.width;
      double heightScreen = MediaQuery.of(context).size.height;
      double heightBlackPart = (heightScreen/15).truncateToDouble();
      double heightBgImage = heightScreen-heightBlackPart;
     if (listePages == null) {
       print('génération des pages');
       listePages = <Widget>
       [
         Container(child: MyInfoGenerale(heightScreen, widthScreen, context)),
         Container(child: MyFormations(heightScreen, widthScreen, context)),
         Container(child: MyExperience(heightScreen, widthScreen, context)),
         Container(child: MyLoisirs(heightScreen, widthScreen, context)),
         Container(child: MyContacts(heightScreen, widthScreen, context))
       ];
     }
      else
        print ('liste des pages déjà instanciée');


      return MaterialApp
        (
          title: 'Mon CV',
          home: SafeArea(
              top: false,
              bottom: false,
              child: Column(
                  children:
                  [
                    Container(height: heightScreen, width: widthScreen, color: Color(0xFF49B9E9),
                        child: Stack
                          (
                            alignment: Alignment.bottomCenter,
                            children:
                            [
                              AnimatedBackground(widthScreen,heightBgImage,heightBlackPart),
                              Positioned(top: 0, width:widthScreen,height: heightBgImage,
                                  child: MyPageSlider(key: _slider,pages: listePages,duration: Duration(seconds: 1))),

                              AnimatedContainer(color: selectedPage==4?Colors.white:Colors.black,height: heightBlackPart+20,width: widthScreen,duration: Duration(milliseconds: 200),),
                              MyNavigationBar(_onItemTapped)
                            ]
                        )
                    )
                  ]
              )
          )
      );
    }
  }