import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewHardSkills.dart';

class ListCursus extends StatefulWidget
{
  BuildContext parentContext;
  ListCursus(this.parentContext);

  @override
  State<ListCursus> createState() => ListCursusState();
}

class ListCursusState extends State<ListCursus> {
  List<Cursus> liste;
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(liste == null)
    {
      CurriculumVitae.getCursusList().then((value) =>
      {setState(() {
        liste = value;
      })});
      return Column(
          children: [Text("Récupération: chargement des formatins.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    return Expanded(child:ListViewCursus(liste, this.widget.parentContext));
  }
}