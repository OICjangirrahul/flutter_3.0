abstract class SignInState {}

class SignInIntialState extends SignInState {}

class SignInInvalidState extends SignInState {}

class SignInValiddState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errorMessage;
  SignInErrorState(this.errorMessage);
}
