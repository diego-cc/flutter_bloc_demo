import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/blocs/contacts_bloc.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        initialValue: "",
        decoration: const InputDecoration(
            icon: Icon(Icons.search),
            hintText: "Search for a contact...",
            labelText: "Contact name or mobile..."),
        onChanged: (data) => BlocProvider.of<ContactsBloc>(context)
            .add(SearchContactsEvent(searchQuery: data)),
      ),
    );
  }
}
