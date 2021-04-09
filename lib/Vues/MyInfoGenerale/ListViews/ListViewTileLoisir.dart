
import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/Loisir.dart';

class ListViewTileLoisir extends StatelessWidget
{
  const ListViewTileLoisir(this.loisir,this.indice,this.onTap,this.parentContext);
  final Loisir loisir;
  final int indice;
  final BuildContext parentContext;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    print("ListViewTileLoisir::build:skill="+loisir.label);
    print("image="+loisir.image);
    return
          Card(child:ListTile(
            title: Text(loisir.label),
            subtitle: Text(loisir.about),
            isThreeLine: false,
            onTap: ()=>{onTap(indice)},
      ));
  }

}