import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFormations extends StatelessWidget
{
  @override
  Widget build(BuildContext context,) {
    print("%MyFormation:buimld:lapolice:"+Theme.of(context).textTheme.headline4.fontFamily);
    return
    Container(
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
                    Center(child:Text("Thierry BRU",style: Theme.of(context).textTheme.headline4)),
                    Center(child:Text('formation',style: Theme.of(context).textTheme.subtitle1)),
                    Center(child:Text('Web et Mobile',style: Theme.of(context).textTheme.subtitle1))
                  ],
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child:Text('Je recherche actuellement un poste de développeur Web ou Mobile. Mon expérience variée me rend adaptable et me donne du recul par rapport à mes tâches de développeur.',style: Theme.of(context).textTheme.subtitle1),

            ),
          ],
        ),

    )
            ),
    Container(height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
        color: Color(0xffC8C8C8),
      ),
      child: Row(
        children: [
          Expanded(child:Image.asset('images/logo_flutter.png',height: 30,)),
    Expanded(child:Image.asset('images/logo_java.png',height: 30)),
    Expanded(child:Image.asset('images/logo_swift.png',height: 30)),
    Expanded(child:Image.asset('images/logo_php.png',height: 30)),
    Expanded(child:Image.asset('images/logo_sql.png',height: 30)),
    Expanded(child:Image.asset('images/logo_dotnet.png',height: 30)),
        ],
      ),
    )
    ],
      )
    )
    ;
  }

}