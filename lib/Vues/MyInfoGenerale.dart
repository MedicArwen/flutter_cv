import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///D:/DEV/APP/flutter_cv/lib/Vues/Elements/DefautPanelView.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListHardSkills.dart';
import 'file:///D:/DEV/APP/flutter_cv/lib/Vues/Elements/RichTextAboutMe.dart';


class MyInfoGenerale extends StatelessWidget
{
  BuildContext parentContext;
  double height;
  double width;

  MyInfoGenerale(this.height,this.width,this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
    DefautPanelView(this.parentContext,
         Column
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
            Expanded(child:Container(
              margin: EdgeInsets.only(top: 30),
              child:
              Scrollbar(child:SingleChildScrollView(child:RichTextAboutMe(parentContext)),thickness: 10)
            )),
            Expanded(child: Scrollbar(child:ListHardSkills(parentContext),thickness: 10))
          ]
        ),20,10,height*0.8,width);
  }

}