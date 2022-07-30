import 'package:contact_app_pm/pages/contact%20details%20page.dart';
import 'package:contact_app_pm/pages/contact%20list%20page.dart';
import 'package:contact_app_pm/pages/new%20contact%20page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ContactListPage(),
      routes: {
        ContactListPage.routename:(context) => ContactListPage(),
        ContactDetailsPage.routename:(context) => ContactDetailsPage(),
        NewContactPage.routename:(context) => NewContactPage(),
      },

    );
  }
}
