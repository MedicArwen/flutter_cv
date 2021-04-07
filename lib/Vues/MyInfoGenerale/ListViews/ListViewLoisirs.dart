import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileHardSkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileLoisir.dart';

class ListViewLoisirs extends StatelessWidget {

  final List<Loisir> loisirList;
 final BuildContext parentContext;

  ListViewLoisirs(this.loisirList,this.parentContext);

  @override
  Widget build(BuildContext context) {

    if (this.loisirList.length == 0)
      return Padding(child:Text('Aucun loisir détecté.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+loisirList.length.toString()+" elements");
    loisirList.forEach((element) {print(element.label);});
    return new ListView.builder(
      itemCount: this.loisirList.length,
      //itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i],parentContext),
        itemBuilder: (c,i) => new ListViewTileLoisir(loisirList[i], parentContext)
      //itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}