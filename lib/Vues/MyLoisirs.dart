

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttercv/Controleurs/homepage/MyPageSlider.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';
import 'package:fluttercv/Models/Loisir.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewLoisirs.dart';

import 'DefautPanelView.dart';

class MyLoisirs extends StatefulWidget
{
  BuildContext parentContext;
  double height;
  double width;

  MyLoisirs(this.height,this.width,this.parentContext);

  @override
  State<MyLoisirs> createState() => MyLoisirsState();
}

class MyLoisirsState extends State<MyLoisirs> with TickerProviderStateMixin
{
  List<Loisir> liste;
  int selectedLoisir;
  GlobalKey<MyPageSliderState> _slider = GlobalKey();

  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      //listeImage.add(AnimatedSize(duration: Duration(seconds: 1), vsync: this,child:Image.asset(element.getImageUrl(),width:widget.width,height: isVisible?250:0,fit: BoxFit.fitWidth),
      listeImage.add(Image.asset(element.getImageUrl(),width: widget.width,height: 250,fit: BoxFit.fitWidth,
      ));
    });

    return DefautPanelView(widget.parentContext,
        Column(
        children:
        [
        ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            child:
            // Stack(children: listeImage)
          MyPageSlider(pages:listeImage,duration:Duration(seconds: 1),initialPage: 0,key: _slider,)
            ),
          Center(child:Text("Mes Loisirs",style: Theme.of(widget.parentContext).textTheme.headline1),),
          Expanded(child:ListViewLoisirs(liste,(indexLoisir)=>{changeSelected(indexLoisir)}, this.widget.parentContext))
        ]
        ), 20,0,widget.height*0.8,widget.width);
  }
  void changeSelected(int pIndexLoisir)
    {
      setState(() {
          selectedLoisir = pIndexLoisir;
          _slider.currentState.setPage(pIndexLoisir);

      });
    }

}
//      )
// ),