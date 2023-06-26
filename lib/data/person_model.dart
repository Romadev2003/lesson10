import 'package:lesson10/core/constants.dart';

class PersonModel {
  int id;
  String username;
  String password;
  String name;
  String surname;
  String email;
  int age;
  String country;

  PersonModel(this.id, this.username, this.password, this.name, this.surname,
      this.email, this.age, this.country);

  static PersonModel fromJson(Map<String, dynamic> row) {
    return PersonModel(
      row[Constats.id] as int,
      row[Constats.username] as String,
      row[Constats.password] as String,
      row[Constats.name] as String,
      row[Constats.surname] as String,
      row[Constats.email] as String,
      row[Constats.age] as int,
      row[Constats.country] as String,
    );
  }
}
