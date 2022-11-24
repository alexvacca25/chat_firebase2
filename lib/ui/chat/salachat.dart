import 'package:chat_firebase2/domain/controlador/controluser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SalaChat extends StatefulWidget {
  const SalaChat({super.key});

  @override
  State<SalaChat> createState() => _SalaChatState();
}

class _SalaChatState extends State<SalaChat> {
  @override
  Widget build(BuildContext context) {
    TextEditingController mensaje = TextEditingController();
    ControlAuth ca = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: const Text('WaCHAT'),
        actions: [
          IconButton(
              onPressed: () {
                ca.reiniciar().then((value) => Get.offAllNamed('/login'));
              },
              icon: const Icon(Icons.exit_to_app_rounded))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensaje,
                    decoration:
                        const InputDecoration(hintText: 'Ingrese un mensaje'),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
            const Text('Texto de usuario 1'),
            const Text('Texto de usuario 1'),
            const Text('Texto de usuario 1'),
          ],
        ),
      ),
    );
  }
}
