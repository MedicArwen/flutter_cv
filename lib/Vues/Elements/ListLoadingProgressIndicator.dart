import 'package:flutter/material.dart';

class ListLoadingProgressIndicator extends StatelessWidget
{
  String elementOnLoad;

  ListLoadingProgressIndicator(this.elementOnLoad);

  @override
  Widget build(BuildContext context)
  {
    return Column(
        children: [Text("Récupération: chargement $elementOnLoad.", style: Theme.of(context).textTheme.caption), LinearProgressIndicator()]);
  }

}