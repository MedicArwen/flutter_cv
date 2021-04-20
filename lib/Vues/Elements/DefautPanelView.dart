
import 'package:flutter/material.dart';


class DefautPanelView extends StatelessWidget
{
  BuildContext parentContext;
  Widget content;
  double margin;
  double padding;
  double height;
  double width;

  DefautPanelView(this.parentContext, this.content, this.margin,
      this.padding,this.height, this.width);

  @override
  Widget build(BuildContext context,) {
    print("DefautPanelView::build:");
    print(margin.toString());
    print(padding.toString());
    print(height.toString());
    print(width.toString());
    print(parentContext.toString());

    return
    Container(

          height: height,
          margin: EdgeInsets.all (margin),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
            boxShadow:[
              BoxShadow(
                color: Colors.black.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(5, 5), // changes position of shadow
                //first paramerter of offset is left-right
                //second parameter is top to down
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child:
          Column(
            children:
            [Expanded(
                child:
                Padding(
                  padding:EdgeInsets.all(padding),
                  child: content
                )
            ),
            ],
          )
      );
  }
}