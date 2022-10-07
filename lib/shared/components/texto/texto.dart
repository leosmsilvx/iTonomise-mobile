
import 'package:flutter/material.dart';

class criarTexto extends StatefulWidget {
  final String texto;
  const criarTexto({super.key, required this.texto});

  @override
  State<criarTexto> createState() => _criarTextoState();
}

class _criarTextoState extends State<criarTexto> {
  @override
  Widget build(BuildContext context) {
    return  Text(widget.texto, style: const TextStyle(fontSize: 15), textAlign: TextAlign.justify,);
  }
}