import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/components/search_bar.dart';
import 'package:flutter_bloc_demo/models/contact.dart';

import 'contact_card.dart';

class ContactsList extends StatelessWidget {
  final List<Contact> contacts;

  const ContactsList({Key key, this.contacts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: ListView(
        children: [
          SearchBar(),
          const SizedBox(height: 10),
          Divider(),
          const SizedBox(height: 10),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contacts.length,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (BuildContext context, int index) {
                return ContactCard(
                  contact: contacts[index],
                );
              })
        ],
      ),
    );
  }
}
