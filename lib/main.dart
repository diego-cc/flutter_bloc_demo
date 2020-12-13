import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/pages/search_page.dart';

import 'blocs/contacts_bloc.dart';
import 'models/contact.dart';

void main() {
  runApp(MyApp());
}

final List<Contact> contacts = [
  Contact(name: "Diego", mobile: "0409 888 999"),
  Contact(name: "John", mobile: "0402 876 128"),
  Contact(name: "Maria", mobile: "0489 782 943"),
  Contact(name: "Jack", mobile: "0432 999 444")
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Bloc demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider(
          create: (BuildContext context) =>
              ContactsBloc(initialState: contacts),
          child: SearchPage(),
        ));
  }
}
