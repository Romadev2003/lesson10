import 'package:flutter/foundation.dart';
import 'package:lesson10/data/person_model.dart';
import 'package:lesson10/data/repository.dart';

class MainProvider extends ChangeNotifier {

  List<PersonModel> _users = [];

  set users(List<PersonModel> value) {
    notifyListeners();
    _users = value;
  }

  DataRepository dataRepository = DataRepository();


  List<PersonModel> get users => _users;

  Future<List<PersonModel>> loadAll() async {
   return  users = await dataRepository.loadAll();
  }

  Future addPerson(
      {required String username,
      required String pasword,
      required String name,
      required String surname,
      required String email,
      required int age,
      required String country,}) async {
    final user= PersonModel(1, username, pasword, name, surname, email, age, country);
    dataRepository.addPerson(user);
    loadAll();
  }

  Future deletePerson(PersonModel personModel) async {
    await dataRepository.deletePerson(personModel);
  }

  Future updetePerson(PersonModel personModel) async {
    await dataRepository.updetePerson(personModel);
  }
  bool isUser(String pass ,String username){
    bool isUser=false;
     for(PersonModel user in users){
       if(pass=="1"){
         isUser=true;break;
       }
     }
     return isUser;
  }

}
