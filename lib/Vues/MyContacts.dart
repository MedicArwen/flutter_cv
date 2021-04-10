

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';
import 'package:url_launcher/url_launcher.dart';

import 'DefautPanelView.dart';

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
          AnimatedContainer(child:Image.asset('images/photo_guitare.jpg',height:widget.height,fit: BoxFit.fitHeight),duration: Duration(seconds: 3),),top: 100-slideHeight),
          Positioned(child: FloatingActionButton(onPressed: ()=>{_makingOpenUrl('https://opn.to/r/Carte_de_visite_de_Thierry/')},child: Icon(Icons.person_add,color: Colors.grey),backgroundColor: Colors.white24,),right:20, top:20),
          AnimatedContainer(width: widget.width,height: slideHeight,duration: Duration(milliseconds: 50),
          child:GestureDetector(onPanStart: (drag){print("panstart");},onPanUpdate: (drag){print(drag.globalPosition.dy);setState(() {
            slideHeight = widget.height-drag.globalPosition.dy;
          });},child:
           Column(children:
            [
              Center(child:Text('Pour me Contacter',style: Theme.of(widget.parentContext).textTheme.headline1,)),
              Expanded(child:ListView(children:
              [Card(child:
                ListTile(
                  dense: false,
                  isThreeLine: false,
                  leading: Icon(Icons.mail_outline),
                  title: Text('thierry.bru@takotek.fr',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                  tileColor: Colors.white10,
                  onLongPress:()=>{ _makingOpenUrl('mailto:thierry.bru@takotek.fr')}
                  )),
              Card(child:
              ListTile(
                dense: false,
                leading: Icon(Icons.phone),
                title: Text('07 63 90 59 59'),
                tileColor: Colors.white10,
                onLongPress:()=>{ _makingOpenUrl('tel:0033763905959')},
              )),
              Card(child:
              ListTile(
                dense: false,
                leading: Image.asset('images/logo_in.png',width: 25,height: 25,color: Colors.grey,),
                title: Text('www.linkedin.com/in/thierry-bru/',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                tileColor: Colors.white10,

                onLongPress:()=>{ _makingOpenUrl('https://www.linkedin.com/in/thierry-bru/')},
              )),
              Card(child:
              ListTile(
                dense: false,
                leading: Image.asset('images/icon_github.png',width: 25,height: 25,color: Colors.grey,),
                title: Text('https://github.com/MedicArwen',style: Theme.of(widget.parentContext).textTheme.bodyText1),
                tileColor: Colors.white10,
                onLongPress: ()=>{_makingOpenUrl('https://github.com/MedicArwen')},
              )),
                Center(child:Text('Pour partager mes données de contact...',style: Theme.of(widget.parentContext).textTheme.headline3)),
                Card(child:ListTile(
                  dense: true,
                  leading: Text('1',style: Theme.of(widget.parentContext).textTheme.headline3),
                  title: Text('Ouvrez l\application Photo sur l\autre appareil'),
                )),
                Card(child:ListTile(
                  dense: true,
                  leading: Text('2',style: Theme.of(widget.parentContext).textTheme.headline3),
                  title: Text('Visez le QR Code en le gardant au centre du cadre'),
                )),
                Card(child:ListTile(
                  dense: true,
                  leading: Text('3',style: Theme.of(widget.parentContext).textTheme.headline3),
                  title: Text('Appuyez sur la bulle qui vous propose d\'ouvrir le lien!'),
                )),
                Card(child:ListTile(
                  dense: true,
                  leading: Text('4',style: Theme.of(widget.parentContext).textTheme.headline3),
                  title: Text('Acceptez l\'ajout du contact (vCard) à vos contacts !'),
                )),
                Image.asset('images/qr_code.png')])),
            ])


            ), decoration: BoxDecoration(
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
  _makingPhoneCall() async {
    const url = 'tel:0033763905959';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Can\' call $url';
    }
  }
  _makingOpenUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Can\' open $url';
    }
  }
}