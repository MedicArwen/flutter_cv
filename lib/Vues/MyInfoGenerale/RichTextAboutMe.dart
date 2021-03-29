import 'package:flutter/material.dart';
import 'package:fluttercv/Models/CurriculumVitae.dart';

class RichTextAboutMe extends StatefulWidget
{
  BuildContext parentContext;
  RichTextAboutMe(this.parentContext);

  @override
  State<RichTextAboutMe> createState() => RichTextAboutMeState();
}
class RichTextAboutMeState extends State<RichTextAboutMe> {

  List<String> listSpanText;
  @override
  void initState()
  {
  super.initState();
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> listeRichText = [];
    if(listSpanText == null)
      {
        CurriculumVitae.getAboutMe().then((value) =>
        {setState(() {
          listSpanText = value;
        })});
        return Column(
            children: [Text("Récupération: chargement du texte.", style: Theme
                .of(context)
                .textTheme
                .caption), LinearProgressIndicator()]);
      }
    listSpanText.forEach((element)
        {
          listeRichText.add(RichText(text:TextSpan(text:element, style: Theme.of(this.widget.parentContext).textTheme.bodyText1),textAlign: TextAlign.justify));
          listeRichText.add(Container(height: 5,));
        });
    return Column(children: listeRichText,);
  }
  }
