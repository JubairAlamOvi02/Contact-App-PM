import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  //const ContactDetailsPage({Key? key}) : super(key: key);
  static const routename ='/contact_details';

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details Page'),
      ),
    );
  }
}
