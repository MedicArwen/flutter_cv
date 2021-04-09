import 'package:flutter/material.dart';

class LoisirImageWidget extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() => LoisirImageWidgetState();
}
class LoisirImageWidgetState extends State<LoisirImageWidget>
{
  String image = "photo_guitare.jpg";
  @override
  Widget build(BuildContext context) {
    return
      Expanded(child:Container(
        width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30)),
            color: Color(0xffC8C8C8),
            image: DecorationImage(image:
            AssetImage('images/'+image)
                ,fit: BoxFit.fitWidth))));
      //Image.asset('images/photo_guitare.jpg');
  }
  void onChageImage(String imageUrl)
  {
    setState(() {
      image = imageUrl;
    });
  }
}