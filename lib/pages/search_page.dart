import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/blocs/contacts_bloc.dart';
import 'package:flutter_bloc_demo/components/contacts_list.dart';
import 'package:flutter_bloc_demo/models/contact.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Search...")),
        body: BlocBuilder<ContactsBloc, List<Contact>>(
          builder: (context, state) {
            return ContactsList(
              contacts: state,
            );
          },
        ));
  }
}
