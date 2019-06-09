import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter VS Code Sample",
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text("First flutter App using vs code."),
      ),
      body: Text("Welcome to my flutter first app"),
    ),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}