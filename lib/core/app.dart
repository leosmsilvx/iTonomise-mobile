import 'package:flutter/material.dart';
import 'package:itonomise/modules/index/pages/index_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iTonomise',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const indexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}