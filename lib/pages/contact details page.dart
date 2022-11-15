import 'dart:ffi';

import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  //const ContactDetailsPage({Key? key}) : super(key: key);
  static const routename ='/contact_details';

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {

  /*@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    int  id = ModalRoute.of(context)!.settings.arguments as int;
    print(id);
    super.didChangeDependencies();
  }
*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details Page'),
      ),
    );
  }
}
