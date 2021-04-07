import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttercv/Controleurs/homepage/HomePage.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
import 'package:fluttercv/Vues/Elements/RoundedTextTile.dart';
import 'package:intl/intl.dart';
class ListViewTileExperiencePro extends StatelessWidget
{
  const ListViewTileExperiencePro(this.experiencePro,this.parentContext);
  final ExperiencePro experiencePro;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {

    print("ListViewTileExperiencePro::build:experiencePro="+experiencePro.raisonSociale);
  List<Text> listTaches = [];
    List<Widget> liste = [];
    experiencePro.taches.forEach((element) {listTaches.add(Text("- "+element+"",style: Theme.of(parentContext).textTheme.subtitle1));});
    experiencePro.technologies.forEach((element) { liste.add(RoundedTextTile(HomePage.yellow, element, parentContext)); });
    experiencePro.environements.forEach((element) { liste.add(RoundedTextTile(HomePage.bleu, element, parentContext)); });
    /*   return

            Card(
              child:
                  Column(children:
                          [ListTile(
                            title:title,
                            subtitle: RichText(text: TextSpan(children: listTaches)),
                          ),
                        Row(children: liste)
                ])
      );*/
    return Card(child:Column(children: [
      experiencePro.dateFin!=null
          ?Center(child: Text(' Jusqu\'à '+DateFormat('MMMM yyyy').format(experiencePro.dateFin),style: Theme.of(parentContext).textTheme.subtitle1))
          :Center(child: Text('toujours en cours..',style: Theme.of(parentContext).textTheme.subtitle1),),
      Text(experiencePro.raisonSociale+' ('+experiencePro.ville+')',style: Theme.of(parentContext).textTheme.headline3,),
      Column(children:listTaches,crossAxisAlignment: CrossAxisAlignment.start,),
      Row(children:liste),
      Text(' Depuis '+DateFormat('MMMM yyyy').format(experiencePro.dateDebut),style: Theme.of(parentContext).textTheme.subtitle1)
    ],));
  }

}