import 'package:flutter/material.dart';
import 'package:fluttercv/Controleurs/homepage/HomePage.dart';
import 'package:fluttercv/Models/ExperiencePro.dart';
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
    experiencePro.technologies.forEach((element) { liste.add(Chip(backgroundColor:HomePage.yellow, label:Text(element,style: Theme.of(parentContext).textTheme.caption))); });
    experiencePro.environements.forEach((element) { liste.add(Chip(backgroundColor:HomePage.bleu, label:Text(element,style: Theme.of(parentContext).textTheme.caption))); });

    return Card(child:Column(children: [
      experiencePro.dateFin!=null
          ?Center(child: Text(' Jusqu\'à '+DateFormat('MMMM yyyy').format(experiencePro.dateFin),style: Theme.of(parentContext).textTheme.subtitle1))
          :Center(child: Text('toujours en cours..',style: Theme.of(parentContext).textTheme.subtitle1),),
      Text(experiencePro.raisonSociale+' ('+experiencePro.ville+')',style: Theme.of(parentContext).textTheme.headline3,),
      Column(children:listTaches,crossAxisAlignment: CrossAxisAlignment.start,),
      Wrap(spacing: 4.0,runSpacing: 2.0,children:liste),
      Text(' Depuis '+DateFormat('MMMM yyyy').format(experiencePro.dateDebut),style: Theme.of(parentContext).textTheme.subtitle1)
    ],));
  }

}