import 'package:chat_firebase2/domain/controlador/controluser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController passw = TextEditingController();
  ControlAuth ca = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Ingresar a WaChat'),
              const SizedBox(
                height: 10,
              ),
              const CircleAvatar(
                radius: 50,
                child: Icon(
                  Icons.message_sharp,
                  size: 50,
                ),
              ),
              TextField(
                controller: email,
                decoration:
                    const InputDecoration(labelText: 'Ingresar el Email'),
              ),
              TextField(
                controller: passw,
                obscureText: true,
                decoration:
                    const InputDecoration(labelText: 'Ingrese la Contraseña'),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                      onPressed: () {}, child: const Text('Ingresar')),
                  OutlinedButton(
                      onPressed: () {
                        ca
                            .addUser(email.text, passw.text)
                            .then((value) => null);
                      },
                      child: const Text('Registrarse'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
