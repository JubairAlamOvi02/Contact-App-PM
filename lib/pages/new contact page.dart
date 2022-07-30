import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  //const NewContactPage({Key? key}) : super(key: key);
  static const String routename ='/new_contact';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact Page'),
      ),
    );
  }
}
