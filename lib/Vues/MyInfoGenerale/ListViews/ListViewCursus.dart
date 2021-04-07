import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileHardSkill.dart';

class ListViewCursus extends StatelessWidget {

  final List<Cursus> cursusList;
 final BuildContext parentContext;

  ListViewCursus(this.cursusList,this.parentContext);

  @override
  Widget build(BuildContext context) {

    if (this.cursusList.length == 0)
      return Padding(child:Text('Aucune formation détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+cursusList.length.toString()+" elements");
    cursusList.forEach((element) {print(element.label);});
    return new ListView.builder(
      itemCount: this.cursusList.length,
      //itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i],parentContext),
        itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i], parentContext)
      //itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}