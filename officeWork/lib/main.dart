import 'package:flutter/material.dart';
import 'package:officeWork/databaseHelper.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shop in Pocket"),
        backgroundColor: Colors.deepPurpleAccent[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () async {
                int i = await DatabaseHelper.instance.insert({
                  DatabaseHelper.fName: "SSSS",
                  DatabaseHelper.lName: "AAA"
                });
                print("the inserted id is $i");
              },
              child: Text("Insert"),
              color: Colors.amber,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Query"),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {},
              child: Text("Delete"),
              color: Colors.blue,
            ),
            FlatButton(
                onPressed: () {}, child: Text("Update"), color: Colors.indigo)
          ],
        ),
      ),
    );
  }
}
