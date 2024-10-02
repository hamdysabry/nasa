abstract class AuthState {}

class InitialAuthState extends AuthState {}

class RegisterSuccess extends AuthState {}

class RegisterLoading extends AuthState {}

class FaliuarRegister extends AuthState {
  String errmessage;

  FaliuarRegister({required this.errmessage});
}

class LoginSuccess extends AuthState {}

class LoginLoading extends AuthState {}

class FaliuarLogin extends AuthState {
  String errmessage;

  FaliuarLogin({required this.errmessage});
}
