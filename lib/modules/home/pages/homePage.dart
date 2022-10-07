import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Center(
          child: Text('iTonomise',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(100, 50, 100, 20),
            child: Center(child: Text('Home Page', style: TextStyle(fontSize: 50)))
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(100, 50, 100, 20),
            child: Center(child: Text('eu vou fazer página uma bonitinha raulivan eu prometo', style: TextStyle(fontSize: 20)))
          ),
          ],
      ),
    );  
}}