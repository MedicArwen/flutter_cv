import 'package:flutter/material.dart';
import 'package:fluttercv/Models/Cursus.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileCursus.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileExpTache.dart';
import 'package:fluttercv/Vues/MyInfoGenerale/ListViews/ListViewTileHardSkill.dart';

class ListViewTache extends StatelessWidget {

  final List<String> tacheList;
 final BuildContext parentContext;

  ListViewTache(this.tacheList,this.parentContext);

  @override
  Widget build(BuildContext context) {

    if (this.tacheList.length == 0)
      return Padding(child:Text('Aucune tâche détectée.',style: Theme.of(context).textTheme.caption),padding: const EdgeInsets.all(20),);
    print("j'ai trouvé "+tacheList.length.toString()+" tâches");
    tacheList.forEach((element) {print(element);});
    return new Container(height: 50,
        child:ListView.builder(
      itemCount: this.tacheList.length,
        itemBuilder: (c,i) => new ListViewTileExpTache(tacheList[i], parentContext)
    )
    );

  }

}