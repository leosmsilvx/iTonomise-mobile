import 'package:flutter/material.dart';

class cadastroAutPage extends StatefulWidget {
  const cadastroAutPage({Key? key}) : super(key: key);

  @override
  State<cadastroAutPage> createState() => _cadastroAutPageState();
}

class _cadastroAutPageState extends State<cadastroAutPage> {
  late bool _passwordVisible;
  @override

  void initState() {
    super.initState();
    _passwordVisible = true;
  }


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
      body: ListView(
        children: [
          //Texto Cadastro Autonomo
          const Padding(padding: EdgeInsets.fromLTRB(60, 50, 200, 40),
            child: Text('Cadastro Autonomo',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ),


          campoCadastro('Nome Completo', TextInputType.text, 'Fulano da Silva'),
          campoCadastro('CPF', TextInputType.number, '111.222.333-44'),
          campoCadastro('E-mail', TextInputType.emailAddress, 'fulano@email.com'),
          campoCadastro('Data de nascimento', TextInputType.datetime, 'XX/XX/XXXX'),
          campoCadastro('Descrição', TextInputType.text, 'Uma breve descrição sua, com o que você trabalha...'),

          //CAMPO SENHA
          Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.visiblePassword,
            obscureText: _passwordVisible,
            decoration: InputDecoration(
              hintText: 'Sua melhor senha!',
              border: const OutlineInputBorder(),
              label: const Text('Senha'), 
              suffixIcon: IconButton(
                icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility,),
                onPressed: () {
                  setState(() {
                      _passwordVisible = !_passwordVisible;
                });},),
              ),
            ),
          ),
          
          Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: const Size(100, 55),              
            ),
            child: const Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 18)),),
          ),


        ],
      ),
    );
  }

   Widget campoCadastro(String texto, TextInputType tipo, String hint){
    return Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: tipo,
            decoration: InputDecoration(
              hintText: hint,
              border: const OutlineInputBorder(),
              label: Text(texto), 
              ),
            ),
          );
  }

}
