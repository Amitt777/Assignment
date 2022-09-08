import 'package:flutter/material.dart';
import 'package:n_app/screen/notelist.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Note App',
      theme: ThemeData(
        primarySwatch: Colors.indigo
      ),
      home: NoteList(),
    );
  }
}
