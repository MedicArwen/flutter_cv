import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListHardSkills.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/RichTextAboutMe.dart';


class MyInfoGenerale extends StatelessWidget
{
  BuildContext parentContext;

  MyInfoGenerale(this.parentContext);

  @override
  Widget build(BuildContext context,) {
    print("MyInfoGenerale::lapolice:"+(Theme.of(parentContext).textTheme.headline1.fontFamily));
    return
    Container(
      //height: 500,

      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
        boxShadow:[
          BoxShadow(
            color: Colors.black.withOpacity(0.5), //color of shadow
            spreadRadius: 5, //spread radius
            blurRadius: 7, // blur radius
            offset: Offset(5, 5), // changes position of shadow
            //first paramerter of offset is left-right
            //second parameter is top to down
          ),
          //you can set more BoxShadow() here
        ],
      ),
      child:
      Column(
     children:
      [Expanded(
        child:
        Padding(
        padding: EdgeInsets.all(10),
        child: Column
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
        ),

    )
            ),
    Container(height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
        color: Color(0xffC8C8C8),
      ),
    )
    ],
      )
    )
    ;
  }

}