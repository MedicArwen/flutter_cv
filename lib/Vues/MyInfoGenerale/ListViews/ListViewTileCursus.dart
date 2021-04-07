
import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';

class ListViewTileCursus extends StatelessWidget
{
  const ListViewTileCursus(this.cursus,this.parentContext);
  final Cursus cursus;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewTileCursus::build:skill="+cursus.label);
    print(cursus.info!="".toString());
    String infos ="";
    if (cursus.info!="")
      infos= cursus.organisme+" à "+cursus.city + "  " + cursus.info;
    else
      infos= cursus.organisme+" à "+cursus.city;

    return
          Card(child:ListTile(
            title: Text(cursus.label),
            leading: (Text(cursus.annee.toString())),
            subtitle: Text(infos),
            isThreeLine: cursus.info!="",
      ));
  }

}