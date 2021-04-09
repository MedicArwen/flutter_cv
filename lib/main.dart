import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'Controleurs/homepage/HomePage.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: [
      Locale('en', 'US'),
      Locale('fr', 'FR')
    ],
    path: 'assets/translations',
  ));

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
        theme:  ThemeData(
          fontFamily: 'Komikax',
      textTheme: TextTheme(
          headline1: TextStyle(fontSize: 30.0,color: Color(0xFFFA9917)),
          headline2: TextStyle(fontSize: 20.0,color: Colors.black),
          headline3: TextStyle(fontSize: 13.0,color: Color(0xFF46B9E9)),
          bodyText1: TextStyle(fontSize: 15.0,color: Colors.grey),
          subtitle1: TextStyle(fontSize: 10.0,color: Colors.black),
          caption: TextStyle(fontSize: 9.0,color: Colors.black),
      )
      ),
      home: HomePage(),
    );
  }
}
