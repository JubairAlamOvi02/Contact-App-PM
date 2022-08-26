class ContactModel {
  //int? id;
  String? name;
  String? email;

  ContactModel(
      this.name, 
      this.email);


  @override
  String toString() {
    return 'name: $name, email: $email}';
  }
}
