class ContactModel{

  int? id;
  String name;
  String phoneNumber;

  ContactModel(this.id, this.name, this.phoneNumber);

  @override
  String toString() {
    return 'ContactModel{id: $id, name: $name, phoneNumber: $phoneNumber}';
  }
}