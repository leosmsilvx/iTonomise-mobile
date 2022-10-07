import 'package:flutter/material.dart';

class campoCadastro extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? tipo;
  final String hint;
  final String texto;
  const campoCadastro({super.key, required this.hint, required this.texto, this.tipo, required this.controller});

  @override
  State<campoCadastro> createState() => _campoCadastroState();
}

class _campoCadastroState extends State<campoCadastro> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: widget.tipo ?? TextInputType.text,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hint,
              border: const OutlineInputBorder(),
              label: Text(widget.texto), 
              ),
            );
  }
}