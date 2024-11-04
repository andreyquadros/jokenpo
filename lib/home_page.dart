import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int imagemMaquina = 4;

  int sortearMaquina(){
    Random random = Random();
    int opcao_sorteada = random.nextInt(3)+1;
    return opcao_sorteada;
  }

  void atualizarImagemMaquina(int opcao_sorteada){
    setState(() {
      imagemMaquina = opcao_sorteada;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF6d6d6d),
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Pedra, Papel, Tesoura'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: [
              Text('Escolha da Máquina: '),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Color(0xFF6d6d6d),
                  radius: 100, child: Image.asset('assets/images/$imagemMaquina.png')),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 5,
              ),
              SizedBox(
                height: 30,
              ),
              Text('Escolha do Usuário: '),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: (){
                        int opcao_sorteada = sortearMaquina();
                        atualizarImagemMaquina(opcao_sorteada);
                        if(opcao_sorteada == 1){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empatou!')));
                        }if(opcao_sorteada == 2){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você Ganhou!')));
                        }if(opcao_sorteada == 3){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você Perdeu!')));
                        }
                      },
                      child: CircleAvatar(
                          backgroundColor: Color(0xFF6d6d6d),
                          radius: 100, child: Image.asset('assets/images/1.png')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        int opcao_sorteada = sortearMaquina();
                        atualizarImagemMaquina(opcao_sorteada);
                        if(opcao_sorteada == 1){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você Perdeu!')));
                        }if(opcao_sorteada == 2){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empatou!')));
                        }if(opcao_sorteada == 3){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você Ganhou!')));
                        }
                      },
                      child: CircleAvatar(
                          backgroundColor: Color(0xFF6d6d6d),
                          radius: 100, child: Image.asset('assets/images/2.png')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: (){
                        int opcao_sorteada = sortearMaquina();
                        atualizarImagemMaquina(opcao_sorteada);
                        if(opcao_sorteada == 1){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você Ganhou!')));
                        }if(opcao_sorteada == 2){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Você perdeu!')));
                        }if(opcao_sorteada == 3){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Empatou!')));
                        }
                      },
                      child: CircleAvatar(
                          backgroundColor: Color(0xFF6d6d6d),
                          radius: 100, child: Image.asset('assets/images/3.png')),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
