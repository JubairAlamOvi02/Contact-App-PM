import 'package:contact_app_pm/models/contact_modle.dart';
import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  //const NewContactPage({Key? key}) : super(key: key);
  static const String routename ='/new_contact';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Contact Page'),

        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: _saveContact,
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter name',
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid User Name';
                }
                return null;
              },

            ),
            SizedBox(height: 10,),

            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Enter Email',
                prefixIcon: Icon(Icons.email),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid Email id';
                }
                return null;
              },

            ),
            SizedBox(height: 10,),

          ],
        ),
      ),
    );
  }

  void _saveContact() {
    if (_formKey.currentState!.validate()) {
      final contact = ContactModel(nameController.text, emailController.text);
      print(contact);
    }
  }
}