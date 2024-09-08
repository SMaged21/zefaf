import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shopping/bloc/cubit_signup/cubit_signup_state.dart';
import 'package:online_shopping/firebase/auth.dart';

class CubitSignup extends Cubit<SignUpState> {
  CubitSignup() : super(InitialState());
  static CubitSignup get(context) => BlocProvider.of(context);

  Future<void> createUser(String email, String password) async {
    emit(LoadingState());
    try {
      await Authen.CreateUser(
        email,
        password,
      );

      // Add additional logic here if needed, e.g., user verification, navigation
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState(message: e.toString()));
    }
  }

  Future<void> signInWithGoogle() async {
    emit(LoadingState());
    try {
      await Authen.signInwithGoogle();
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState(message: e.toString()));
    }
  }
}
