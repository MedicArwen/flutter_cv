import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileExperiencePro.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileHardSkill.dart';

class ListViewExperiencePro extends StatelessWidget {

  final List<ExperiencePro> experienceList;
 final BuildContext parentContext;

  ListViewExperiencePro(this.experienceList,this.parentContext);

  @override
  Widget build(BuildContext context) {

    if (this.experienceList.length == 0)
      return Padding(child:Text('Aucune formation détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+experienceList.length.toString()+" elements");
    experienceList.forEach((element) {print(element.raisonSociale);});
    return new ListView.builder(
      itemCount: this.experienceList.length,
      //itemBuilder: (c,i) => new ListViewTileCursus(cursusList[i],parentContext),
        itemBuilder: (c,i) => new ListViewTileExperiencePro(experienceList[i], parentContext)
      //itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}