import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListLoisirs.dart';

import 'DefautPanelView.dart';

class MyLoisirs extends StatelessWidget
{
  BuildContext parentContext;

  MyLoisirs(this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::build:");
    return
      DefautPanelView(Column
        (
          children:
          [
          Expanded(child:Container(
              width: MediaQuery.of(context).size.width,
           //   height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
            color: Color(0xffC8C8C8),
            image: const DecorationImage(image: AssetImage('images/photo_guitare.jpg'),fit: BoxFit.fitWidth),
          ))),
            Center(child:Text("Mes Loisirs",style: Theme.of(parentContext).textTheme.headline1)),
            ListLoisirs(parentContext)

          ]
      ), parentContext,isMargin: false);
  }
}