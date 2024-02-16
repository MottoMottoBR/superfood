import 'package:flutter/foundation.dart';
import 'package:superfood/pages/pages_controller/sign_up_state.dart';

class SignUpController extends ChangeNotifier {
  SignUpState _state = SignUpInitialState();
  SignUpState get state => _state;
  void _changeState(SignUpState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<bool> doSignUp() async {
    _changeState(SignUpLoadingState());
    await Future.delayed(const Duration(seconds: 2));
    print('Usuario Logado');
    _changeState(SignUpSucessState());
    return true;
  }
}
