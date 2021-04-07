
import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/Loisir.dart';

class ListViewTileLoisir extends StatelessWidget
{
  const ListViewTileLoisir(this.loisir,this.parentContext);
  final Loisir loisir;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewTileLoisir::build:skill="+loisir.label);
    return
          Card(child:ListTile(
            title: Text(loisir.label),
            subtitle: Text(loisir.about),
            isThreeLine: false
      ));
  }

}