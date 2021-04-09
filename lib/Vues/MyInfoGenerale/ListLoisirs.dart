import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewHardSkills.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';

class ListLoisirs extends StatefulWidget
{
  Function onTap;
  BuildContext parentContext;
  ListLoisirs(this.onTap,this.parentContext);

  @override
  State<ListLoisirs> createState() => ListLoisirsState();
}

class ListLoisirsState extends State<ListLoisirs> {
  List<Loisir> liste;
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if(liste == null)
    {
      CurriculumVitae.getLoisirList().then((value) =>
      {setState(() {
        liste = value;
      })});
      return Column(
          children: [Text("Récupération: chargement des loisirs.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    return Expanded(child:ListViewLoisirs(liste,widget.onTap, this.widget.parentContext));
  }
}