abstract class SignInState {}

class InitialState extends SignInState {}

class LoadingState extends SignInState {}

class SuccessState extends SignInState {}

class ErrorState extends SignInState {
  final String? message;

  ErrorState({this.message});
}
