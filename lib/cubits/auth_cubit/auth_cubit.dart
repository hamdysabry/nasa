import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nasa_app/cubits/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(InitialAuthState());

  Future<void> Login({
    required String email,
    required String password,
  }) async {
    emit(LoginLoading());

    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(LoginSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(FaliuarLogin(errmessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(
            FaliuarLogin(errmessage: 'Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(FaliuarLogin(errmessage: "Something went wrong.."));
    }
  }

  Future<void> Register({
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());

    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(FaliuarRegister(errmessage: 'weak-password.'));
      } else if (e.code == 'email-already-in-use') {
        emit(FaliuarRegister(errmessage: 'email-already-in-use.'));
      }
    } catch (e) {
      emit(FaliuarRegister(errmessage: "Something went wrong.."));
    }
  }
}
