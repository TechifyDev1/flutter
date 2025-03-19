import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// MyApp is the root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

// HomePage is the main screen of the app
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0; // Variable to store the counter value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Set the background color of the app bar
        backgroundColor: const Color.fromARGB(255, 5, 43, 7),
        // Set the title of the app bar
        title: const Text("GeeksforGeeks"),
      ),
      // The main body of the scaffold
      body: Center(
        // Display a centered text widget
        child: Text(
          "$_counter",
          // Apply text styling
          style: TextStyle(
            fontSize: 24, // Set font size
            fontWeight: FontWeight.bold, // Set font weight
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 5, 43, 7),
        onPressed: () {
          // Increment the counter value by 1 using setState
          setState(() {
            _counter++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
