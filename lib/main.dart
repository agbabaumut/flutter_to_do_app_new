import 'package:flutter/material.dart';
import 'package:flutter_to_do_app_new/pages/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      title: 'Material App',
      home: const HomePage(),
    );
  }
}
