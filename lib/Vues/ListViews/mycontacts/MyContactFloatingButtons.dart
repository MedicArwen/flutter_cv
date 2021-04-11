import 'package:flutter/material.dart';
import 'package:fluttercv/Models/ContactURL.dart';

class MyContactFloatingButtons extends StatelessWidget
{
  List<ContactURL> listeContacts;
  Function openUrl;

  MyContactFloatingButtons(this.listeContacts,this.openUrl);

  @override
  Widget build(BuildContext context)
  {
    print('MyContactFloatingButtons:build');
    if (listeContacts == null)
      return Text('ERREUR: Contact not found');
    List <Widget> listeBoutons= [];
    listeContacts.forEach((element)
        { listeBoutons.add(FloatingActionButton(onPressed: ()=>{openUrl(element.url)},child:element.getIconAsWidget(32),backgroundColor: Colors.white24));});
  return Row(children: listeBoutons);
  }

}
