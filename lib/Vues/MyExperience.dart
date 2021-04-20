import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListExperiencesPro.dart';

import 'Elements/DefautPanelView.dart';

class MyExperience extends StatelessWidget
{
  BuildContext parentContext;
  double height;
  double width;

  MyExperience(this.height,this.width,this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
      DefautPanelView(parentContext,Column
        (
          children: [
            Center(child:Text("Expériences",style: Theme.of(parentContext).textTheme.headline1)),
            RichText(text:TextSpan(text:"Listes des expériences professionnelles.", style: Theme.of(this.parentContext).textTheme.bodyText1),textAlign: TextAlign.justify),
            Divider(height:10),
            ListExperiencesPro(parentContext)
          ]
      ), 20,10,height*0.8,width);
  }

}