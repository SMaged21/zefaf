import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:online_shopping/bloc/cubit_signIn/cubit_signin_state.dart';
import 'package:online_shopping/firebase/auth.dart';

class CubitSignin extends Cubit<SignInState> {
  CubitSignin() : super(InitialState());
  static CubitSignin get(context) => BlocProvider.of(context);

  Future<void> SignIn(String email, String password) async {
    emit(LoadingState());
    try {
      await Authen.signIn(
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
