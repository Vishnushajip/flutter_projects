import 'package:flutter/material.dart';

void main() {
  runApp(ContactBookApp());
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact(this.name, this.phoneNumber);
}

class ContactBookApp extends StatelessWidget {
  final List<Contact> contacts = [
    Contact('John Doe', '+1234567890'),
    Contact('Jane Smith', '+1987654321'),
    // Add more contacts here...
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact Book'),
        ),
        body: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  contacts[index].name[0],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(contacts[index].name),
              subtitle: Text(contacts[index].phoneNumber),
              onTap: () {
                // Handle contact tap, e.g., navigate to contact details
                // For simplicity, just print the tapped contact's name
                print('Tapped: ${contacts[index].name}');
              },
            );
          },
        ),
      ),
    );
  }
}
