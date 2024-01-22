class Validador {
  Validador._();

  static String? validatorEmail(String? value) {
    final condition = RegExp(
        r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
    if (value != null && value.isEmpty) {
      return 'Esse campo nao pode ser vazio';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'E-mail Invalido';
    }
    return null;
  }

  static String? validatorPassword(
      String? valeu,) {
    final condition =
        RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
    if (valeu != null && valeu.isEmpty) {
      return 'Esse campo nao pode ser vazio';
    }
    if (valeu != null && !condition.hasMatch(valeu)) {
      return 'Senha no formato invalido, digite uma senha valida';
    }
    return null;
  }

  static String? validatorConfirmPassword(
      String? first, String? second) {
    if ( first != second ){
      return 'As senhas sao diferentes';
    }
    return null;
  }

  static String? validatorNome(String? value) {
    final condition = RegExp(r" \b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+ ");
    if (value != null && value.isEmpty) {
      return 'Esse campo nao pode ser vazio';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'Digite uma nome valido';
    }
    return null;
  }

  static String? validatorUserName(String? value) {
    final condition = RegExp(r"^(?!.*\.\.)(?!.*\.$)[^\W][\w.]{0,29}$");
    if (value != null && value.isEmpty) {
      return 'Esse campo nao pode ser vazio';
    }
    if (value != null && !condition.hasMatch(value)) {
      return 'Digite um username  valido';
    }
    return null;
  }
}
