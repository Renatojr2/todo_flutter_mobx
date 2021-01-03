import 'package:mobx/mobx.dart';
import 'package:email_validator/email_validator.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void togglePasswordVisbility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @observable
  bool loginIn = false;

  @computed
  bool get isValidEmail => EmailValidator.validate(email);

  @computed
  bool get isValidPassword => password.length >= 6;

  @computed
  Function get loginPress =>
      (isValidEmail && isValidPassword && !loading) ? login : null;

  @action
  void login() {
    loading = true;
    loginIn = true;
  }
}
