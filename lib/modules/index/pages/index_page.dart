import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
        title: const Center(
          child: Text('iTonomise',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        )
      ),
      body: ListView(children: [
        criarTitulo('Serviços Oferecidos'),
        criarTexto('iTonomise oferece serviços autônomos diversos, baseados no perfil de quem nos contata. Sua pia entupiu? Nós sabemos o encanador certo para lhe indicar! Seus filhos vão mal na escola? Que tal um tutor? iTonomise é simples e dinâmico, para combinar com a sua rotina'),
        criarLink(),

        criarTitulo('Sou autônomo'),
        criarTexto('Esta é a sua área, autônomo! Aqui você encontrará um guia para ofertar seus serviços em nosso site, bem como dicas para tornar seu perfil mais atrativo aos seus clientes. Sinta-se à vontade nos contando suas experiências passadas, sua preferência em atuação, entre outros!'),
        criarLink(),

        criarTitulo('Sobre iTonomise'),
        criarTexto('A iTonomise é uma plataforma que facilita o acesso à informação entre autônomo e contratante, visando sempre manter o mercado em movimento. Sua ideia surgiu de várias necessidades, dentre elas, a de um TCC. E ao longo de diversas pesquisas sobre o impacto da pandemia nas vidas dos cidadãos brasileiros, chegamos à conclusão que se nosso TCC tinha por objetivo apresentar uma proposta que facilitasse a vida de alguém, que fosse para minimizar esse impacto pandêmico.'),
        criarLink(),

        const Padding(padding: EdgeInsets.fromLTRB(100, 60, 100, 30),
          child: Center(child: Text('iTonomise @2022', style: TextStyle(color: Colors.grey),),))
      ]),
    );
  }

  Widget criarTitulo(String titulo){
    return Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
        child: Text(titulo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),);
  }
  Widget criarTexto(String texto){
    return Padding(padding: const EdgeInsets.fromLTRB(100, 10, 100, 20),
        child: Text(texto, style: const TextStyle(fontSize: 15),),);
  }
  Widget criarLink(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(100,0,100,20),
      child: RichText(
        text: TextSpan(
          children: <TextSpan>[
            TextSpan(
                text: 'Ir para >',
                style: const TextStyle(color: Colors.blueAccent),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => print('vai para página')),
          ],
        ),
      ),
    );
  }

}