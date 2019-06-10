import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotosPage extends StatefulWidget {
  @override
  _PhotosPageState createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  List photosList;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photos Page"),
      ),
      body: photosList == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: photosList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(photosList[index]["filename"]),
                  subtitle: Text(photosList[index]["author"]),
                  trailing: Text(photosList[index]["format"]),
                );
              },
            ),
    );
  }

  void fetchData() async {
    var url = "https://picsum.photos/list";
    var res = await http.get(url);
    var decodeJson = jsonDecode(res.body);
    photosList = decodeJson;
    setState(() {});
  }
}
