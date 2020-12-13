import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_demo/models/contact.dart';
import 'package:flutter/foundation.dart';

class SearchContactsEvent {
  final String searchQuery;

  SearchContactsEvent({@required this.searchQuery});
}

class ContactsBloc extends Bloc<SearchContactsEvent, List<Contact>> {
  final List<Contact> initialState;

  ContactsBloc({this.initialState}) : super(initialState);

  @override
  Stream<List<Contact>> mapEventToState(SearchContactsEvent event) async* {
    if (event.searchQuery.isEmpty) {
      yield initialState;
    } else {
      yield initialState
          .where((contact) =>
              contact.name
                  .trim()
                  .toLowerCase()
                  .startsWith(event.searchQuery.trim().toLowerCase()) ||
              contact.mobile.startsWith(event.searchQuery))
          .toList();
    }
  }
}
