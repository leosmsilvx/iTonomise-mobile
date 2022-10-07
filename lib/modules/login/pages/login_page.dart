import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:itonomise/modules/home/pages/homePage.dart';
import 'package:itonomise/modules/index/pages/index_page.dart';
import 'package:itonomise/modules/login/controllers/login_controller.dart';
import 'package:itonomise/shared/components/botoes/textButton.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  late bool _passwordVisible;
  final _controller = LoginController();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

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
        children: [

          const Padding(
            padding: EdgeInsets.fromLTRB(100, 50, 100, 20),
            child: Center(child: Text('iTonomise', style: TextStyle(fontSize: 50)))
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 30, 100, 20),
          child: TextFormField(
            controller: _controller.email,
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: 'E-mail',
              border: OutlineInputBorder(),
              label: Text('Usuario'), 
              ),
            ),
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: TextFormField(
            controller: _controller.senha,
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
            onPressed: (){
              _controller.entrarOnPressed(sucesso: () {
                  final rota = MaterialPageRoute(builder: (context) => const HomePage());
                  Navigator.of(context).pushReplacement(rota);
                  MotionToast.success(
                    title: const Text(
                      'Sucesso!',
                    ),
                    description: const Text('Login concluido'),
                    animationType: AnimationType.fromLeft,
                    position: MotionToastPosition.top,
                    dismissable: true,
                  ).show(context);
                }, falha: ((motivo) {
                  MotionToast.error(
                    title: const Text("Falha!"),
                    description: Text(motivo),
                    width: 500,
                    position: MotionToastPosition.top,
                    animationType: AnimationType.fromLeft,
                  ).show(context);
                }));
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black87,
              minimumSize: const Size(100, 55),              
            ),
            child: const Text("Entrar", style: TextStyle(color: Colors.white, fontSize: 18)),),
          ),

          Padding(padding: const EdgeInsets.fromLTRB(100, 10, 100, 20),
          child: criarLink(aoClicar: () {
            final rota = MaterialPageRoute(builder: (context) => const indexPage());
            Navigator.of(context).push(rota);           
          }, texto: "Não possui login? Criar conta.", cor: Colors.black,)),

          const Padding(padding: EdgeInsets.fromLTRB(100, 60, 100, 20),
          child: Center(child: Text('iTonomise @2022', style: TextStyle(color: Colors.grey),),))
        ],
      ),
    );    
  }
}