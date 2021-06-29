import 'dart:convert';

class User {
  final int id;
  final String name;
  final int age;
  final String country;
  final String email;

  User(
      { this.id,
         this.name,
         this.age,
         this.country,
        this.email});

  User.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        age = res["age"],
        country = res["country"],
        email = res["email"];

  Map<String, Object> toMap() {
    return {'id':id,'name': name, 'age': age, 'country': country, 'email': email};
  }
}