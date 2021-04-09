

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';

import 'DefautPanelView.dart';

class MyLoisirs extends StatefulWidget
{
  BuildContext parentContext;
  MyLoisirs(this.parentContext);

  @override
  State<MyLoisirs> createState() => MyLoisirsState();
}

class MyLoisirsState extends State<MyLoisirs> with TickerProviderStateMixin
{
  List<Loisir> liste;
  int selectedLoisir;
  bool pictureLarge=true;
  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (this.pictureLarge == null)
      this.pictureLarge = true;
    double heigth = this.pictureLarge?250.0:100.0;
    if(liste == null || selectedLoisir == null)
    {
      CurriculumVitae.getLoisirList().then((value) =>
      {setState(() {
        liste = value;
        print("nombre loisirs rtrouvés:"+liste.length.toString());
        selectedLoisir=0;
      })});
      return Column(
          children: [Text("Récupération: chargement des loisirs.", style: Theme
              .of(context)
              .textTheme
              .caption), LinearProgressIndicator()]);
    }
    if (liste.length ==0)
      return Text("Récupération: aucun loisirs trouvés.", style: Theme
          .of(context)
          .textTheme
          .caption);
    print("le premeir est"+liste[0].label);
    print("loisir a afficher: "+liste[selectedLoisir].label);
    List<Widget> listeImage =  [];
    liste.forEach((element) {
      bool isVisible = element.label==liste[selectedLoisir].label;
      print("hauteur selectionnée:"+heigth.toString());
      listeImage.add(Image.asset(element.getImageUrl(),width:MediaQuery.of(context).size.width-60,height: isVisible?heigth:0,fit: BoxFit.fitWidth),
      );
    });

    return DefautPanelView(
        Column(
        children:
        [
         // AnimatedSize(duration: Duration(milliseconds: 500), vsync: this,child:
          AnimatedContainer(duration: Duration(seconds: 1),curve: Curves.fastLinearToSlowEaseIn,
              child:
        ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            child:
             Stack(children: listeImage)
            ),
            width:MediaQuery.of(context).size.width-60,height: heigth),
       // ),
          Center(child:Text("Mes Loisirs",style: Theme.of(widget.parentContext).textTheme.headline1),),
          Expanded(child:ListViewLoisirs(liste,(indexLoisir)=>{changeSelected(indexLoisir)}, this.widget.parentContext))
        ]
        )
    ,widget.parentContext,isMargin:false);
  }
  void changeSelected(int pIndexLoisir)
    {
      setState(() {
          if (selectedLoisir ==pIndexLoisir)
            pictureLarge = !pictureLarge;
          else
            pictureLarge = true;
          selectedLoisir = pIndexLoisir;

      });
    }

}
//      )
// ),