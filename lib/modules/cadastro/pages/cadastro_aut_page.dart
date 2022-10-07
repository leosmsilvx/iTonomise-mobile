import 'package:flutter/material.dart';
import 'package:itonomise/modules/cadastro/controllers/cadastro_aut_controller.dart';
import 'package:itonomise/shared/components/campoForm/campoCadastro.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

class cadastroAutPage extends StatefulWidget {
  const cadastroAutPage({Key? key}) : super(key: key);

  @override
  State<cadastroAutPage> createState() => _cadastroAutPageState();
}

class _cadastroAutPageState extends State<cadastroAutPage> {
  late bool _passwordVisible;
  final _controller = CadastroAutController();
  @override

  void initState() {
    super.initState();
    _passwordVisible = true;
  }


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
      body: ListView(
        children: [
          //Texto Cadastro Autonomo
          const Padding(padding: EdgeInsets.fromLTRB(60, 50, 200, 40),
            child: Text('Cadastro Autonomo',
              style: TextStyle(fontSize: 20, color: Colors.black),
            )
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: campoCadastro(texto: 'Nome Completo', tipo: TextInputType.text, hint: 'Fulano da Silva', controller: _controller.nome,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: campoCadastro(texto: 'CPF', tipo: TextInputType.number, hint: '111.222.333-44', controller: _controller.cpf,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: campoCadastro(texto: 'E-mail', tipo: TextInputType.emailAddress, hint: 'fulano@email.com', controller: _controller.email,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: campoCadastro(texto: 'Data de nascimento', tipo: TextInputType.datetime, hint: 'XX/XX/XXXX', controller: _controller.dtn,),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
            child: campoCadastro(texto: 'Descrição', tipo: TextInputType.text, hint: 'Uma breve descrição sua, com o que você trabalha...', controller: _controller.descricao,),
          ),

          //CAMPO SENHA
          Padding(padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            keyboardType: TextInputType.visiblePassword,
            obscureText: _passwordVisible,
            controller: _controller.senha,
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
            onPressed: (){
              _controller.salvarOnPressed(sucesso: () {
                      Navigator.of(context).pop();
                      MotionToast.success(
                        title: const Text(
                          'Sucesso!',
                        ),
                        description: const Text(
                            'Seu cadastro foi concluído com sucesso.'),
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
              primary: Colors.black,
              minimumSize: const Size(100, 55),              
            ),
            child: const Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 18)),),
          ),


        ],
      ),
    );
  }


}
