import 'package:contact_app_pm/models/contact_modle.dart';
import 'package:contact_app_pm/pages/contact%20details%20page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatefulWidget {
  //const ContactItem({Key? key}) : super(key: key);
  final ContactModel contactModel;
 

  ContactItem(this.contactModel);

  @override
  State<ContactItem> createState() => _ContactItemState();
}

class _ContactItemState extends State<ContactItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context,ContactDetailsPage.routename,arguments: widget.contactModel.id);

        },

        title: Text(widget.contactModel.name),
      ),
    );
  }
}
