import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/DefautPanelView.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListHardSkills.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/RichTextAboutMe.dart';


class MyInfoGenerale extends StatelessWidget
{
  BuildContext parentContext;

  MyInfoGenerale(this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
     DefautPanelView(Column
          (
          children: [
            Row(
              children: [
              CircleAvatar(backgroundImage: AssetImage('images/portrait.jpg'),radius: 50,),
              Column(
                  children: [
                    Center(child:Text("Thierry BRU",style: Theme.of(parentContext).textTheme.headline1)),
                    Center(child:Text('Développeur',style: Theme.of(parentContext).textTheme.headline2)),
                    Center(child:Text('Web et Mobile',style: Theme.of(parentContext).textTheme.headline2))
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child:
            RichTextAboutMe(parentContext)
            ),
            ListHardSkills(parentContext)
          ]
        ), parentContext);
  }

}