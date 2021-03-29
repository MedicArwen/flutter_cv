
import 'package:flutter/material.dart';
import 'package:fluttercv/Models/TechnologySkill.dart';

class ListViewTileHardSkill extends StatelessWidget
{
  const ListViewTileHardSkill(this.skill,this.parentContext);
  final TechnologySkill skill;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    print("ListViewTileHardSkill::build:skill="+skill.label);
    return

      Row(
          children:
          [
            Padding(padding: const EdgeInsets.all(5),
                child: Image.asset('images/'+skill.imageName+".png",height: 50,width: 50,)),
            Expanded(child: TextButton(child:Text(skill.label,style: Theme.of(parentContext).textTheme.headline2))),
            Padding(padding: const EdgeInsets.all(5),child:Text(skill.level.toString()+"/5",style: Theme.of(parentContext).textTheme.headline2))
          ]
      );
  }

}