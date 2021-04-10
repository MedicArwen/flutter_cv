import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewHardSkills.dart';

class ListHardSkills extends StatefulWidget
{
  BuildContext parentContext;
  ListHardSkills(this.parentContext);

  @override
  State<ListHardSkills> createState() => ListHardSkillsState();
}

class ListHardSkillsState extends State<ListHardSkills> {
List<TechnologySkill> liste;
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
        if(liste == null)
    {
      CurriculumVitae.getTechnologySkillList().then((value) =>
      {setState(() {
        liste = value;
      })});
      return Column(
          children: [Text("Récupération: chargement des compétences.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    return ListViewHardSkills(liste, this.widget.parentContext);
  }
}
