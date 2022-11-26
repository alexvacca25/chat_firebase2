import 'package:chat_firebase2/domain/controlador/controlchat.dart';
import 'package:chat_firebase2/domain/controlador/controluser.dart';
import 'package:chat_firebase2/ui/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetPlatform.isWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAj9NrVXvWuNUUHir9TLlkrzqmqJxfcey8",
              authDomain: "wachat-b1c9c.firebaseapp.com",
              projectId: "wachat-b1c9c",
              storageBucket: "wachat-b1c9c.appspot.com",
              messagingSenderId: "149067224538",
              appId: "1:149067224538:web:fe1aa94f4adab6c3a89ce3"))
      : await Firebase.initializeApp();

  Get.put(ControlChat());
  Get.put(ControlAuth());
  runApp(const App());
}
