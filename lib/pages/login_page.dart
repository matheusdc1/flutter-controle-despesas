import 'package:controle_despesas/components/my_button.dart';
import 'package:controle_despesas/components/my_textfield.dart';
import 'package:controle_despesas/components/square_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //ediçao texto controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //metodo entrar usuario
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //bem vindo de volta
              Text(
                "Bem vindo de volta, sentimos sua falta!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),

              const SizedBox(height: 25),

              //usuario
              MyTextfield(
                controller: usernameController,
                hintText: "Usuário",
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //senha
              MyTextfield(
                controller: passwordController,
                hintText: "Senha",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //esqueceu senha
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //entrar
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              //ou continue
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Ou entrar com",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              //google + apple entrar botao
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  //botao google
                  SquareTile(imagePath: "lib/images/google.png"),

                  const SizedBox(width: 25),
                  //botao apple
                  SquareTile(imagePath: "lib/images/apple.png")
                ],
              ),

              const SizedBox(height: 50),

              //nao é um membro?
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não tem uma conta?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Cadastre-se',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
