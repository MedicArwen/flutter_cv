import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewExperiencePro.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewHardSkills.dart';

class ListExperiencesPro extends StatefulWidget
{
  BuildContext parentContext;
  ListExperiencesPro(this.parentContext);

  @override
  State<ListExperiencesPro> createState() => ListExperiencesProState();
}

class ListExperiencesProState extends State<ListExperiencesPro> {
  List<ExperiencePro> liste;
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(liste == null)
    {
      CurriculumVitae.getExperiencesProList().then((value) =>
      {setState(() {
        liste = value;
      })});
      return Column(
          children: [Text("Récupération: chargement des experiences.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    return Expanded(child:ListViewExperiencePro(liste, this.widget.parentContext));
  }
}