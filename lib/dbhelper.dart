import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqlite_api.dart';

class Dbhelper{
//create instance, singleton
Dbhelper._privateConstructor;
Dbhelper instance = Dbhelper._privateConstructor();

//initilize database
Database _database;

Future<Database> get database => _database ??=_initializeDatabase();

 Future<Database> _initializeDatabase()  async{
  Directory directory= await getApplicationDocumentsDirectory();
  String path =join(directory.path,"semesterdb");
  openDatabase(path,version:1,onCreate: _onCreate);
 }
  
  

  FutureOr<void> _onCreate(Database db, int version) {
    await.db.execute(
      '''
   CREATE TABLE gradetable(
    id INTEGER PRIMARY KEY,
    semester TEXT,
    grade TEXT
   )
'''
    );
  }
  insertGrade() async{
Database db= await instance.database;
db.insert( 'gardetable',g);

  }

}