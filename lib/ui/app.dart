import 'package:chat_firebase2/ui/autenticacion/login.dart';
import 'package:chat_firebase2/ui/chat/salachat.dart';
import 'package:chat_firebase2/ui/chatprivado/salaprivada.dart';
import 'package:chat_firebase2/ui/usuarios/listar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sala de Chat',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/login': (context) => const Login(),
        '/salachat': (context) => const SalaChat(),
        '/listausuarios': (context) => const ListarUsuarios(),
        '/salaprivada': (context) => const SalaPrivada(),
      },
    );
  }
}
