

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';

import 'DefautPanelView.dart';

class MyContacts extends StatefulWidget
{
  BuildContext parentContext;
  MyContacts(this.parentContext);

  @override
  State<MyContacts> createState() => MyContactsState();
}

class MyContactsState extends State<MyContacts> with TickerProviderStateMixin
{
  double slideHeight;
  @override
  void initState()
  {
    super.initState();
    slideHeight = 100.0;
  }

  @override
  Widget build(BuildContext context)
  {
    if (slideHeight == null || slideHeight <300)
      slideHeight = 300.0;
    return
      Container(child:
        Stack(children: [
          Positioned(child:
          AnimatedContainer(child:Image.asset('images/photo_guitare.jpg',height: MediaQuery.of(context).size.height,fit: BoxFit.fitHeight),duration: Duration(seconds: 3),),top: 100-slideHeight),
          AnimatedContainer(width: MediaQuery.of(context).size.width,height: slideHeight,color: Colors.black12,duration: Duration(milliseconds: 50),
          //child: Row(children: [TextButton(onPressed:goUp, child: Text('UP')),TextButton(onPressed:goDown, child: Text('down'))],),
          child:GestureDetector(onPanStart: (drag){print("panstart");},onPanUpdate: (drag){print(drag.globalPosition.dy);setState(() {
            slideHeight =  MediaQuery.of(context).size.height-drag.globalPosition.dy;
          });},child:
            Column(children:
            [
              Center(child:Text('Pour me Contacter',style: Theme.of(widget.parentContext).textTheme.headline1,)),
              Card(child:
                ListTile(
                  dense: false,
                  isThreeLine: false,
                  leading: Icon(Icons.mail_outline),
                  title: Text('thierry.bru@takotek.fr',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                  tileColor: Colors.white10,
                  )),
              Card(child:
              ListTile(
                dense: false,
                leading: Icon(Icons.phone),
                title: Text('07 63 90 59 59'),
                tileColor: Colors.white10,
              )),
              Card(child:
              ListTile(
                dense: false,
                leading: Image.asset('images/logo_in.png',width: 25,height: 25,color: Colors.grey,),
                title: Text('www.linkedin.com/in/thierry-bru/',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                tileColor: Colors.white10,
              )),
              Card(child:
              ListTile(
                dense: false,
                leading: Image.asset('images/icon_github.png',width: 25,height: 25,color: Colors.grey,),
                title: Text('https://github.com/MedicArwen',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                tileColor: Colors.white10,
              )),
              Image.asset('images/qr_code.png')
            ])

            )
            )
          ],alignment: Alignment.bottomCenter,),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.black,);
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
}
//      )
// ),