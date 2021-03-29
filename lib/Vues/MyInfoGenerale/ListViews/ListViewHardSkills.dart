import 'package:flutter/material.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileHardSkill.dart';

class ListViewHardSkills extends StatelessWidget {

  final List<TechnologySkill> skillList;
 final BuildContext parentContext;

  ListViewHardSkills(this.skillList,this.parentContext);

  @override
  Widget build(BuildContext context) {

    if (this.skillList.length == 0)
      return Padding(child:Text('Aucune compétence détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+skillList.length.toString()+" elements");
    skillList.forEach((element) {print(element.label);});
    return new ListView.builder(
      itemCount: this.skillList.length,
      itemBuilder: (c,i) => new ListViewTileHardSkill(skillList[i],parentContext),
    );

  }

}