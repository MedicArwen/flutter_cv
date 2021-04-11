import 'package:flutter/material.dart';
import 'package:fluttercv/Models/ContactURL.dart';
import 'package:fluttercv/Models/EnumTypeContactUrl.dart';

class MyContactList extends StatelessWidget
{
  List<ContactURL>listeContacts;
  BuildContext parentContext;
  Function openUrl;

  MyContactList(this.listeContacts, this.openUrl,this.parentContext );

  @override
  Widget build(BuildContext context)
  {
    List<Widget>contacts = [];
    if (listeContacts == null || listeContacts.length == 0)
      {
        contacts.add(Text('Erreur: aucun contacts'));
        return  Column(children:contacts);
      }
    listeContacts.forEach((element)
        {
          if (element.typeContactUrl == EnumTypeContactUrl.urlQRCode)
            contacts.add(getQrCode(element));
          else
          contacts.add(Card(child:
          ListTile(
              dense: false,
              isThreeLine: false,
              leading: element.getIconAsWidget(25.0),
              title: Text(element.url,style: Theme.of(parentContext).textTheme.bodyText1),
              tileColor: Colors.white10,
              onLongPress:()=>{ openUrl(element.urlWithType())}
          )));
        });
    return Column (children:
        [
          Center(child:Text('Pour me Contacter',style: Theme.of(parentContext).textTheme.headline1,)),
          Expanded(child:
            ListView(children:contacts)
                  )
        ]);
  }
  Widget getQrCode(ContactURL pContact)
  {
    return Column(children:[
      Center(child:Text('Pour partager mes données de contact...',style: Theme.of(parentContext).textTheme.headline3)),
      Card(child:ListTile(
        dense: true,
        leading: Text('1',style: Theme.of(parentContext).textTheme.headline3),
        title: Text('Ouvrez l\application Photo sur l\autre appareil'),
      )),
      Card(child:ListTile(
        dense: true,
        leading: Text('2',style: Theme.of(parentContext).textTheme.headline3),
        title: Text('Visez le QR Code en le gardant au centre du cadre'),
      )),
      Card(child:ListTile(
        dense: true,
        leading: Text('3',style: Theme.of(parentContext).textTheme.headline3),
        title: Text('Appuyez sur la bulle qui vous propose d\'ouvrir le lien!'),
      )),
      Image.asset(pContact.url),
      Card(child:ListTile(
        dense: true,
        leading: Text('4',style: Theme.of(parentContext).textTheme.headline3),
        title: Text('Acceptez l\'ajout du contact (vCard) à vos contacts !'),
      )),
      Card(child:ListTile(
        dense: true,
        //leading: Text('5',style: Theme.of(parentContext).textTheme.headline3),
        title: Text(''),
      )),

    ]);
  }
}
