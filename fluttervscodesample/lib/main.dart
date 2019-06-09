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
     floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add), onPressed: (){} ,),
      drawer: Drawer(child: ListView(children: <Widget>[
        Text("Option 1"),
        Text("Option 2"),
        Text("Option 3"),
        Text("Option 4"),
        Text("Option 5"),
        
      ],),),
    );
  }
}
