import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class AnimatedBackground extends StatefulWidget
{
  double width;
  double height;
  double bottomHeight;

  AnimatedBackground(this.width, this.height,this.bottomHeight);

  @override
  State<StatefulWidget> createState() => AnimatedBackgroundState();

}

class AnimatedBackgroundState extends State<AnimatedBackground>
{
  double x=-20.0;
  double y=-20.0;

  @override
  void initState() {
    super.initState();
    gyroscopeEvents.listen((GyroscopeEvent event)
    {
      if (event.x.abs() > 0.1)
        setState(() {
          x = x + event.x*10;
          x>0?x=0:x=x;
          x<-20?x=-20:x=x;
        });
      if (event.y.abs() > 0.1)
        setState(() {
          y = y + event.y*10;
          y>20?y=20:y=y;
          y<-20?y=-20:y=y;
        });
    });
  }

  @override
  Widget build(BuildContext context)
  {
   // print("AnimatedBackgroundState::build:: -> [X="+x.toString()+" Y="+y.toString()+"]");

    return
      AnimatedPositioned(child: Image.asset('images/home_page_wide.png', width: widget.width*2, height: widget.height, fit: BoxFit.fitWidth), duration: Duration(seconds: 1)
        ,top: -20 - x, left: -20 - y,width: widget.width*2,height: widget.height );
  }

}