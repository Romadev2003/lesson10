import 'package:lesson10/core/constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteHelper {
  late Database db;

  Future initDatabase() async {
    final appDocDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocDir.path, Constats.databaseName);
    db = await openDatabase(
      dbPath,
      version: Constats.version,
      onCreate: (db, version) async {
        await db.execute('''
            CREATE TABLE ${Constats.tablename} 
            (
            ${Constats.id} INTEGER PRIMARY KEY,
            ${Constats.username} TEXT,
            ${Constats.password} TEXT,
            ${Constats.name} TEXT NOT NULL,
            ${Constats.surname} TEXT NOT NULL ,
            ${Constats.email} TEXT NOT NULL ,
            ${Constats.age} INTEGER NOT NULL ,
            ${Constats.country} TEXT
            ) ''');
      },
    );
    print("data base inited");
  }

  Future<List<Map<String, dynamic>>> loadAll() async {
    return await db.query(Constats.tablename);
  }

  Future addPerson(Map<String, dynamic> row) async {
    initDatabase();
    await db.insert(Constats.tablename, row);
  }

  Future deletePerson(Map<String, dynamic> row) async {
    int id = row[Constats.id];
    await db.delete(
      Constats.tablename,
      where: '${Constats.id}= ?',
      whereArgs: [id],
    );
  }

  Future updatePerson(Map<String, dynamic> row) async {
    int id = row[Constats.id];
    await db.update(
      Constats.tablename,
      row,
      where: '${Constats.id}= ?',
      whereArgs: [id],
    );
  }
}
