import'package:flutter/material.dart';
import './app_screens/home.dart';
import './app_screens/route2.dart';
void main()
{
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=> home(),
      '/second':(context)=> secondroute(),
    },
    debugShowCheckedModeBanner: false,
  )
  );
}
//class myfstapp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: "moi app",
//      home: new Scaffold(appBar: new AppBar( title: new Text("shivani's learning flutter")),
//        body: new Center(child: new Text("Helllooo!!"))
//          )
//    );
//  }
//}

