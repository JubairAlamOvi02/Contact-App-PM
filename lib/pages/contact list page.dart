import 'package:contact_app_pm/db/sqlite_helper.dart';
import 'package:contact_app_pm/pages/new%20contact%20page.dart';
import 'package:flutter/material.dart';

class ContactListPage extends StatefulWidget {
  //const ContactListPage({Key? key}) : super(key: key);
  static const String routename ='/contact_list';

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {

  @override
  void initState() {
    // TODO: implement initState
    DBHelper.getAllContacts();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, NewContactPage.routename);

        },
        child: Icon(Icons.add),
        tooltip:'Add a new contact page',
      ),
    );
  }
}
