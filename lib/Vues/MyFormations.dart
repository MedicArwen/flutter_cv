import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/DefautPanelView.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListHardSkills.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/RichTextAboutMe.dart';


class MyFormations extends StatelessWidget
{
  BuildContext parentContext;

  MyFormations(this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
      DefautPanelView(Column
        (
          children: [
            Center(child:Text("Formations",style: Theme.of(parentContext).textTheme.headline1)),
            RichText(text:TextSpan(text:"Listes des formations professionnelles suivies.", style: Theme.of(this.parentContext).textTheme.bodyText1),textAlign: TextAlign.justify),
            Divider(height:10),
            ListCursus(parentContext)
          ]
      ), parentContext);
  }

}
