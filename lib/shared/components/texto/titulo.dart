
import 'package:flutter/material.dart';

class criarTitulo extends StatefulWidget {
  final String titulo;
  const criarTitulo({super.key, required this.titulo});

  @override
  State<criarTitulo> createState() => _criarTituloState();
}

class _criarTituloState extends State<criarTitulo> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.titulo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25));
  }
}