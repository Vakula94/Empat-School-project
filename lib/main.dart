import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Person person = Person(firstName: 'Andriy', lastName: 'Vakulenko');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('User')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: ${person.firstName}'),
              Text('Surname: ${person.lastName}'),
            ],
          ),
        ),
      ),
    );
  }
}

class Person {
  String _firstName;
  String _lastName;
  Person({required String firstName, required String lastName})
    : _firstName = firstName,
      _lastName = lastName;

  String get firstName => _firstName;
  String get lastName => _lastName;

  set firstName(String value) => _firstName = value;
  set lastName(String value) => _lastName = value;
}
