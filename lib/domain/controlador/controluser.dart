import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class ControlAuth extends GetxController {
  final FirebaseAuth authf = FirebaseAuth.instance;
  final Rx<dynamic> _uid = "".obs;
  final Rx<dynamic> _email = "".obs;
  final Rx<dynamic> _mensajes = "".obs;

  String get emailr => _email.value;
  String get uid => _uid.value;

  Future<void> addUser(String u, String p) async {
    try {
      UserCredential usuario =
          await authf.createUserWithEmailAndPassword(email: u, password: p);
      print(usuario);

      _uid.value = usuario.user!.uid;
      _email.value = usuario.user!.email;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Future.error('Contraseña Debil');
      } else if (e.code == 'email-already-in-use') {
        _uid.value = "";
        _email.value = "";
        return Future.error('Email ya esta en Uso');
      }
    }
  }
}
