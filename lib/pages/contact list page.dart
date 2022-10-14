import 'package:contact_app_pm/customwidgets/contact_item.dart';
import 'package:contact_app_pm/db/sqlite_helper.dart';
import 'package:contact_app_pm/pages/new%20contact%20page.dart';
import 'package:flutter/material.dart';

import '../models/contact_modle.dart';

//import '../Model/contact_model.dart';


class ContactListPage extends StatefulWidget {
  //const ContactListPage({Key? key}) : super(key: key);
  static const String routename ='/contact_list';

  @override
  State<ContactListPage> createState() => _ContactListPageState();
  //_ContactListPageState creatState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  List<ContactModel> _contactList =[];

  @override
  void initState() {
    // TODO: implement initState
    _getData();
    super.initState();
  }
  void _getData(){
    DBHelper.getAllContacts().then((cList) {
      setState(() {
        _contactList = cList;
      });
    },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List Page'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
          itemCount: _contactList.length,
          itemBuilder: (context,index){
            final contact =_contactList[index];
            return ContactItem(contact);


          },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat ,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ContactModel?  contact = await Navigator.pushNamed(context, NewContactPage.routename) as ContactModel;
          if(contact !=null){
            setState(() {
              _contactList.add(contact);
            });
          }

        },
        child: Icon(Icons.add),
        tooltip:'Add a new contact page',
      ),
    );
  }
}
