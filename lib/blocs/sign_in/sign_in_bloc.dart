import 'package:day1/blocs/sign_in/sign_in_event.dart';
import 'package:day1/blocs/sign_in/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInIntialState()) {
    on<SignInChangedEvent>((event, emit) => {
      if(event.emailvalue==""){
        emit(SignInErrorState('plese enter valid email'))
      }else if(event.passwordvalue.length<=7){
        emit(SignInErrorState('please enter more than 7'))
      }else{
        emit(SignInValiddState())
      }
    });
    on<SignInSubmittedEvent>((event, emit) => {

    });
  }
}
