import 'package:flutter/material.dart';
import 'package:xpot/widgets/Input_form_component.dart';
import 'package:xpot/widgets/button_component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 56),
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('./assets/logo.png'),
              const SizedBox(
                height: 56,
              ),
              Text('Acesse sua conta',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor)),
              const SizedBox(
                height: 42,
              ),
              Form(
                  child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    InputForm(label: 'Login', controller: _loginController),
                    const SizedBox(
                      height: 12,
                    ),
                    InputForm(label: 'Senha', controller: _passwordController),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Esqueci minha senha',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 14),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Button(
                        label: 'Entrar',
                        onTap: () {},
                        bgColor: const Color(0xFFF7CB15),
                        textColor: Colors.black)
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 150,
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(32), topLeft: Radius.circular(32))),
        padding:
            const EdgeInsets.only(top: 26, right: 32, left: 32, bottom: 60),
        child: Column(
          children: [
            Button(
              label: "Criar conta",
              onTap: () {},
              bgColor: Colors.black,
              textColor: const Color(0xFFF7CB15),
              border: const Color(0xFFF7CB15),
            )
          ],
        ),
      ),
    );
  }
}
