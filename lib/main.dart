
import 'package:flutter/material.dart';
import 'package:untitled1/pages/add.dart';
import 'pages/users.dart';
import 'package:untitled1/pages/edit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User_contact',

      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Container(
        child: Scaffold(
          appBar: AppBar(title: Text('User_contact'),),
          body: UsersList (),

        )
    );
  }
}



