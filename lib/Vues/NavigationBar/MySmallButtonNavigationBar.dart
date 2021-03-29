import 'package:flutter/material.dart';
class MySmallButtonNavigationBar extends StatelessWidget
{
  //Icons.school "Formations"
  // Icons.assessment "Experience"
  // Icons.music_note "loisirs"
  IconData icone;
  String label;
  Function onTapped;

  MySmallButtonNavigationBar(this.icone, this.label,this.onTapped);

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Material(color: Color(0xFFFA9917),
              child: InkWell(splashColor: Colors.red,
                  child: SizedBox(width: 50, height: 50,
                      child: Column(
                      children:
                      [
                        Icon(icone,size: 30,),
                        Text(label,style: Theme.of(context).textTheme.caption)
                        ]),
                    ),
                      onTap:this.onTapped
              ),
            )
    );
  }
}
