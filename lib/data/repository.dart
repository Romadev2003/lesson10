import 'package:lesson10/core/constants.dart';
import 'package:lesson10/data/person_model.dart';
import 'package:lesson10/data/sqlflite_helper.dart';

class DataRepository {
  SqfliteHelper sqfliteHelper = SqfliteHelper();


  Future<List<PersonModel>> loadAll() async {
    List<PersonModel> users = [];
    final response = await sqfliteHelper.loadAll();
    users = response.map((row) => PersonModel.fromJson(row)).toList();
    return users;
  }

  Future addPerson(PersonModel personModel) async {
    Map<String, dynamic> row = {
      Constats.username : personModel.username,
      Constats.password : personModel.password,
      Constats.name : personModel.name,
      Constats.surname : personModel.surname,
      Constats.email : personModel.email,
      Constats.age : personModel.age,
      Constats.country : personModel.country,
    };
    await sqfliteHelper.addPerson(row);
  }

  Future deletePerson(PersonModel personModel) async {Map<String, dynamic> row = {
    Constats.id : personModel.id,
    Constats.username : personModel.username,
    Constats.password : personModel.password,
    Constats.name : personModel.name,
    Constats.surname : personModel.surname,
    Constats.email : personModel.email,
    Constats.age : personModel.age,
    Constats.country : personModel.country,
  };
  await sqfliteHelper.deletePerson(row);}

  Future updetePerson(PersonModel personModel) async {Map<String, dynamic> row = {
    Constats.id : personModel.id,
    Constats.username : personModel.username,
    Constats.password : personModel.password,
    Constats.name : personModel.name,
    Constats.surname : personModel.surname,
    Constats.email : personModel.email,
    Constats.age : personModel.age,
    Constats.country : personModel.country,
  };
  await sqfliteHelper.updatePerson(row);}
}
