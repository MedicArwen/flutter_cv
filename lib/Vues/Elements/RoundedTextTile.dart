import 'package:flutter/material.dart';

class RoundedTextTile extends StatelessWidget
{
  Color couleur;
  String texte;
  BuildContext parentContext;

  RoundedTextTile(this.couleur, this.texte,this.parentContext);

  @override
  Widget build(BuildContext context) {
    return
        Container(
          margin: EdgeInsets.all(2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: couleur,
          ),
          child:Padding( 
              padding: EdgeInsets.all(5),
              child:Text(texte,style: Theme.of(parentContext).textTheme.caption))
        );
  }
  
}