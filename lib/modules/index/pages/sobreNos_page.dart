import 'package:flutter/material.dart';
import 'package:itonomise/shared/components/texto/texto.dart';
import 'package:itonomise/shared/components/texto/titulo.dart';

class sobreNos extends StatefulWidget {
  const sobreNos({super.key});

  @override
  State<sobreNos> createState() => _sobreNosState();
}

class _sobreNosState extends State<sobreNos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: const Center(
          child: Text('iTonomise',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
      ),
      // ignore: prefer_const_literals_to_create_immutables
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: criarTitulo(titulo: 'Sobre nos'),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: criarTexto(texto: 'Somos muito mais que um site. Somos um time de jovens estudantes preocupados com os impactos da pandemia no mercado de trabalho. E, como programadores, sabemos a dificuldade de encontrar trabalhos freelancer que não respaldados pela CLT, os famosos "bicos/biscates". Fundada em XX de 2022, a iTonomise começou como um projeto de TCC e se estabeleceu como o site que você está vendo. Nosso objetivo é facilita o acesso à informação entre os clientes, possibilitando que usuários aversos à interfaces complexas se sintam familiarizados.'),
        ),
      ]),
    );
  }
}