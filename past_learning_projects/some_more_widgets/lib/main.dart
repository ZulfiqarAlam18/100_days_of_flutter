import 'package:flutter/material.dart';

void main() => runApp(const ListViewExample());

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
          backgroundColor: Colors.teal,
        ),
        body: const MessageList(),
      ),
    );
  }
}

class MessageList extends StatelessWidget {
  const MessageList({super.key});

  // A list of dummy data (names and messages)
  final List<Map<String, String>> messages = const [
    {'name': 'John', 'message': 'Hey, how are you?'},
    {'name': 'Sarah', 'message': 'Did you get my email?'},
    {'name': 'Mike', 'message': 'Let\'s catch up soon!'},
    {'name': 'Emma', 'message': 'Meeting postponed to 3 PM.'},
    {'name': 'Sophia', 'message': 'Can we reschedule?'},
    {'name': 'Daniel', 'message': 'I finished the project.'},
    {'name': 'Olivia', 'message': 'Don’t forget the meeting tomorrow.'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length, // The number of items in the list
      itemBuilder: (context, index) {
        // Fetching the name and message for each item
        final name = messages[index]['name']!;
        final message = messages[index]['message']!;

        return Card(
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: ListTile(
            leading: CircleAvatar(
              child: Text(name[0]), // Display the first letter of the name
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white,
            ),
            title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(message),
            trailing: const Icon(Icons.message),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Tapped on $name\'s message'),
              ));
            },
          ),
        );
      },
    );
  }
}
