const String tblContact ='tbl_contact';
const String tblName = 'name';
const String tblEmail = 'email';
const String tblid = 'id';
class ContactModel {
  int? id;
  String? name;
  String? email;

  ContactModel(
     // this.id,
      this.name, 
      this.email);

  Map<String,dynamic> toMap(){

    var map =<String,dynamic> {
      tblContact:name,
      tblEmail:email,
    };
    if(id != null){
      map[tblid] = id;
    }

    return map;
  }

  @override
  String toString() {
    return 'ContactModel{id: $id, name: $name, email: $email}';
  }
}
