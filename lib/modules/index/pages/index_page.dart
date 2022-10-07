import 'package:flutter/material.dart';
import 'package:itonomise/modules/cadastro/pages/cadastro_aut_page.dart';
import 'package:itonomise/modules/index/pages/sobreNos_page.dart';
import 'package:itonomise/modules/login/pages/login_page.dart';
import 'package:itonomise/shared/components/botoes/textButton.dart';
import 'package:itonomise/shared/components/texto/texto.dart';
import 'package:itonomise/shared/components/texto/titulo.dart';

class indexPage extends StatefulWidget {
  const indexPage({Key? key}) : super(key: key);

  @override
  State<indexPage> createState() => _indexPageState();
}

class _indexPageState extends State<indexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text('iTonomise',
              style: TextStyle(fontSize: 30, color: Colors.white)
            ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: criarLink(aoClicar: (){
              final rota = MaterialPageRoute(builder: (context) => const loginPage());
              Navigator.of(context).push(rota);
            }, texto: "Login", cor: Colors.white,),
          )
        ],
      ),
      body: ListView(children: [
        const Padding(padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: criarTitulo(titulo: 'Sou autônomo'),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: criarTexto(texto: 'Esta é a sua área, autônomo! Aqui você encontrará um guia para ofertar seus serviços em nosso site, bem como dicas para tornar seu perfil mais atrativo aos seus clientes. Sinta-se à vontade nos contando suas experiências passadas, sua preferência em atuação, entre outros!'),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
          child: criarLink(texto: "Ir para", aoClicar: (){
            final rota = MaterialPageRoute(builder: (context) => const cadastroAutPage());
            Navigator.of(context).push(rota);
          }),
        ),

        const Padding(padding: EdgeInsets.fromLTRB(50, 30, 50, 10),
          child: criarTitulo(titulo: 'Sobre iTonomise'),
        ),
        const Padding(padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: criarTexto(texto: 'A iTonomise é uma plataforma que facilita o acesso à informação sobre autônomos na cidade de Divinópolis, visando sempre manter o mercado em movimento. Sua ideia surgiu de várias necessidades, dentre elas, a de um TCC. E ao longo de diversas pesquisas sobre o impacto da pandemia nas vidas dos cidadãos brasileiros, chegamos à conclusão que se nosso TCC tinha por objetivo apresentar uma proposta que facilitasse a vida de alguém, que fosse para minimizar esse impacto pandêmico.'),
        ),
        Padding(padding: const EdgeInsets.fromLTRB(50, 0, 50, 30),
          child: criarLink(texto: "Ir para", aoClicar: (){
            final rota = MaterialPageRoute(builder: (context) => const sobreNos());
            Navigator.of(context).push(rota);
          }),
        ),

        const Padding(padding: EdgeInsets.fromLTRB(100, 60, 100, 30),
          child: Center(child: Text('iTonomise @2022', style: TextStyle(color: Colors.grey),),))
      ]),
    );
  }

}