
import 'package:flutter/material.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
import 'package:intl/intl.dart';
class ListViewTileExpTache extends StatelessWidget
{
  const ListViewTileExpTache(this.tache,this.parentContext);
  final String tache;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewTileExpTache::build:tache="+tache);
    return
          Card(child: Text(tache));
  }

}