import 'package:flutter/material.dart';
import 'package:flutter_sign_language/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario? get usuario => _usuario;

  bool get existeUsuario => _usuario != null;
}
