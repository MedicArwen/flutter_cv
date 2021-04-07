
import 'package:flutter/material.dart';


class DefautPanelView extends StatelessWidget
{
  BuildContext parentContext;
  Widget content;
  bool isMargin;
  DefautPanelView(this.content,this.parentContext,{this.isMargin});

  @override
  Widget build(BuildContext context,) {
    isMargin == null?isMargin=true:print("marge indiquée:"+isMargin.toString());
    print("DefautPanelView::build:");
    return
      Container(
          height: MediaQuery.of(context).size.height-80,
          margin: EdgeInsets.all(30),
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
                  padding: isMargin?EdgeInsets.all(10):EdgeInsets.all(0),
                  child: content
                )
            ),
              Container(height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),bottomRight:Radius.circular(30)),
                  color: Color(0xffC8C8C8),
                ),
              )
            ],
          )
      );
  }
}