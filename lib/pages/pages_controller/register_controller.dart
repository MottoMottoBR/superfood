import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:superfood/pages/pages_controller/register_state.dart';

class RegisterController extends ChangeNotifier {
  RegisterState _state = RegisterInitialState();

  RegisterState get state => _state;

  void _changeStats(RegisterState newState) {
    _state = newState;
  }

  Future<bool> doRegister() async {
    _changeStats(RegisterLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    print('Usuario Logado');
    _changeStats(RegisterSucessState());
    return true;
  }
}
