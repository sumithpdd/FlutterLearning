import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter VS Code Sample",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First flutter App using vs code."),
      ),
      body: Center(child: Text("Welcome to my flutter first app", 
      textAlign: TextAlign.center,
     textScaleFactor: 2, style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
    );
  }
}
