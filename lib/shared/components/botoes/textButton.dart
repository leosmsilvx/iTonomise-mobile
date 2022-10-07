import 'package:flutter/material.dart';

class criarLink extends StatefulWidget {
  final String texto;
  final Color? cor;
  Function()? aoClicar;
  criarLink({super.key, required this.aoClicar, required this.texto, this.cor});

  @override
  State<criarLink> createState() => _criarLinkState();
}

class _criarLinkState extends State<criarLink> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: widget.aoClicar, child: Text(widget.texto, style: TextStyle(color: widget.cor ?? Colors.blue),));
  }
}