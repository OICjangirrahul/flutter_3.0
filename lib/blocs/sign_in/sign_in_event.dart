abstract class SignInEvent {}

class SignInChangedEvent extends SignInEvent {
  final String emailvalue;
  final String passwordvalue;
  SignInChangedEvent(this.emailvalue, this.passwordvalue);
}

class SignInSubmittedEvent extends SignInEvent {
  final String email;
  final String password;
  SignInSubmittedEvent(this.email, this.password);
}
