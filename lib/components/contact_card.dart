import 'package:flutter_bloc_demo/models/contact.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  ContactCard({Key key, this.contact}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: ListTile(
            leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.account_circle)]),
            title: Text("${contact.name}"),
            subtitle: Text("${contact.mobile}"),
            trailing: FlatButton(
              onPressed: () {},
              child: Text(
                "CALL",
                style: TextStyle(color: Colors.blueAccent),
              ),
            )),
      ),
    );
  }
}
