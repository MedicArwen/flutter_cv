import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/DEV/APP/flutter_cv/lib/Vues/Elements/DefautPanelView.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListHardSkills.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewCursus.dart';
import 'file:///D:/DEV/APP/flutter_cv/lib/Vues/Elements/RichTextAboutMe.dart';


class MyFormations extends StatelessWidget
{
  BuildContext parentContext;
  double height;
  double width;

  MyFormations(this.height,this.width,this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
      DefautPanelView(parentContext,Column
        (
          children: [
            Center(child:Text("Formations",style: Theme.of(parentContext).textTheme.headline1)),
            RichText(text:TextSpan(text:"Listes des formations professionnelles suivies.", style: Theme.of(this.parentContext).textTheme.bodyText1),textAlign: TextAlign.justify),
            Divider(height:10),
            ListCursus(parentContext)
          ]
      ), 20,10,height*0.8,width);
  }

}
