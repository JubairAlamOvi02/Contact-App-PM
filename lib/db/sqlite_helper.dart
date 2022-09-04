import 'package:contact_app_pm/models/contact_modle.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as Path;

class DBHelper {
  static const createTabelContact ='''create table $tblContact(
  $tblid integer primary key autoincriment,
  $tblName text,
  $tblEmail text
  ) ''';
  static Future<Database> open() async {
    final root = await getDatabasesPath();
    final dbpath = Path.join(root, 'contact.db');
    return openDatabase(dbpath,version: 1,onCreate: (db,version){
      db.execute(createTabelContact);
    });
  }

  static Future<int> insertContact(ContactModel contactModel) async{
    final db =await open();
    return db.insert(tblContact , contactModel.toMap());

  }
}
