

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttercv/Models/ContactURL.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Vues/ListViews/mycontacts/MyContactFloatingButtons.dart';
import 'package:fluttercv/Vues/ListViews/mycontacts/MyContactList.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';
import 'package:url_launcher/url_launcher.dart';

import 'DefautPanelView.dart';
import 'Elements/ListLoadingProgressIndicator.dart';

class MyContacts extends StatefulWidget
{
  BuildContext parentContext;
  double height;
  double width;


  MyContacts(this.height,this.width,this.parentContext);

  @override
  State<MyContacts> createState() => MyContactsState();
}

class MyContactsState extends State<MyContacts> with TickerProviderStateMixin
{
  double slideHeight;
  List<ContactURL> listeContactList;
  List<ContactURL> listeContactButtons;

  @override
  void initState()
  {
    super.initState();
    slideHeight = 100.0;
  }

  @override
  Widget build(BuildContext context)
  {
    if (listeContactList == null)
    {
      CurriculumVitae.getContactList().then((value) =>
      {
        setState(() { listeContactList = value;
        print("->"+listeContactList.length.toString()+" contact Url chargée(s)");
      })});
      return ListLoadingProgressIndicator('contactUrls:Liste');
    }
    if (listeContactButtons == null)
    {
      CurriculumVitae.getContactButton().then((value) =>
      {
        setState(() { listeContactButtons = value;
        print("->"+listeContactButtons.length.toString()+" contact Url chargée(s)");
        })});
      return ListLoadingProgressIndicator('contactUrls:Buttons');
    }

    if (slideHeight == null || slideHeight <300)
      slideHeight = 300.0;

    return
      Container(child:
        Stack(children: [
          Positioned(child:
          AnimatedContainer(child:Image.asset('images/photo_guitare.jpg',height:widget.height,fit: BoxFit.fitHeight),duration: Duration(seconds: 3),),top: 100-slideHeight),
          Positioned(child:MyContactFloatingButtons(listeContactButtons,_makingOpenUrl),right:20, top:20),
          AnimatedContainer(width: widget.width,height: slideHeight,duration: Duration(milliseconds: 50),
          child:GestureDetector(
              onPanStart: (drag){print("panstart");},
              onPanUpdate: (drag)
              {
                print(drag.globalPosition.dy);
                setState(() {slideHeight = widget.height-drag.globalPosition.dy;});
                },
              child:MyContactList(listeContactList,_makingOpenUrl,widget.parentContext)),
              decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [BoxShadow(
                    color: Colors.black, //color of shadow
                    spreadRadius: 5, //spread radius
                    blurRadius: 7, // blur radius
                    offset: Offset(5, 5), // changes position of shadow
                    //first paramerter of offset is left-right
                    //second parameter is top to down
                  )],
  color: Colors.white)
          )
          ],alignment: Alignment.bottomCenter),
      width:widget.width,
      height: widget.height,
      );
  }

void goUp()
{
  setState(() {
    slideHeight = slideHeight+50;
  });
}
  void goDown()
  {
    setState(() {
      if (slideHeight > 300)
      slideHeight = slideHeight-50;
      else
        slideHeight = 300;
      print('nouvelle hauteur:'+slideHeight.toString());
    });
  }

  _makingOpenUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Can\' open $url';
    }
  }
}