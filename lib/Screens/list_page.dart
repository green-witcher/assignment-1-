import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> listOfItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Board',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: listOfItems.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[600],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                'Task ${index + 1}',
                style: TextStyle(color: Colors.white), // White text
              ),
              subtitle: Text(
                'Your Personal task management and planning solution for planning your day, week & months',
                style: TextStyle(color: Colors.white), // White text
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            listOfItems.add('Task ${listOfItems.length + 1}');
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
