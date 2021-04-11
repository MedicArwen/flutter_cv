import 'package:flutter/material.dart';
import 'package:fluttercv/Models/EnumTypeContactUrl.dart';

class ContactURL
{
  String url;
  EnumTypeContactUrl typeContactUrl;

  ContactURL(this.url, this.typeContactUrl);

  String urlWithType()
  {
    String commande ="";
    if (typeContactUrl == EnumTypeContactUrl.email)
      commande ="mailto:";
    if (typeContactUrl == EnumTypeContactUrl.phone)
      commande ="tel:";
    if (typeContactUrl == EnumTypeContactUrl.linkedIn)
      commande ="http://";
    return commande+this.url;
  }
  Widget getIconAsWidget(double height)
  {
    Widget widget;
    double width = height;
    switch (typeContactUrl)
    {
        case EnumTypeContactUrl.youtube: widget = Icon(Icons.video_collection,color: Colors.grey,size: height);
          break;
        case EnumTypeContactUrl.urlWebvCard: widget = Icon(Icons.person_add,color: Colors.grey,size: height);
          break;
        case EnumTypeContactUrl.linkedIn: widget = Image.asset('images/icons/icons8-linkedin-64.png',height:height,width:width,color: Colors.grey);
          break;
        case EnumTypeContactUrl.urlQRCode: widget = Icon(Icons.qr_code_outlined,color: Colors.grey,size: height);
          break;
        case EnumTypeContactUrl.phone: widget = Icon(Icons.phone_android_outlined,color: Colors.grey,size: height);
          break;
        case EnumTypeContactUrl.email: widget = Icon(Icons.mail_outline,color: Colors.grey,size: height);
          break;
        case EnumTypeContactUrl.github: widget = Image.asset('images/icons/icons8-repository-64.png',height:height,width:width,color: Colors.grey);
          break;
        case EnumTypeContactUrl.facebook: widget = Image.asset('images/icons/icons8-facebook-64.png',height:height,width:width,color: Colors.grey);
          break;
        case EnumTypeContactUrl.instagram: widget = Image.asset('images/icons/icons8-instagram-64.png',height:height,width:width,color: Colors.grey);
          break;
        case EnumTypeContactUrl.urlWebSite: widget = Icon(Icons.home_outlined,color: Colors.grey,size: height);
          break;
        default: widget = Icon(Icons.work_outline,color: Colors.grey,size: height,);
      }
    return widget;
  }
}
