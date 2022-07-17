import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  Widget build(BuildContext context) {
    return Scaffold(     
      backgroundColor: Colors.white,
      body: ListView(
        children: [

          const Padding(
            padding: EdgeInsets.fromLTRB(100, 50, 100, 20),
            child: Center(child: Text('iTonomise', style: TextStyle(fontSize: 50)))
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 30, 100, 20),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'E-mail',
              border: OutlineInputBorder(),
              label: Text('Usuário'), 
              ),
            ),
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.visiblePassword,
            obscureText: _passwordVisible,
            decoration: InputDecoration(
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

          Padding(padding: const EdgeInsets.fromLTRB(100, 30, 100, 20),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              primary: Colors.black87,
              minimumSize: const Size(100, 55),              
            ),
            child: const Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 18)),),
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 10, 100, 20),
          child: TextButton(
            onPressed: (){},
            child: const Text('Não possui login? Criar Conta',
             style: TextStyle(color: Colors.black, fontSize: 15)),)
          ),

          const Padding(padding: EdgeInsets.fromLTRB(100, 60, 100, 20),
          child: Center(child: Text('iTonomise @2022', style: TextStyle(color: Colors.grey),),))
        ],
      ),
    );    
  }
}