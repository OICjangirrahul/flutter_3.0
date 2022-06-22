import 'package:day1/blocs/Color_bloc/Color_event.dart';
import 'package:day1/blocs/Color_bloc/Color_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorGreenState()) {
    on<ColorBlueEvent>((event, emit) => {
      if(event.age>=20){
emit( ColorBlueState('not aligible'))
    
      }
      else{
        emit( ColorGreenState())
      
      }
    });
  }
// InternetBloc() : super(InternetInitialState()) {
//     on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
//     on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));

  //     if (!Cflage) {
  //                 Cflage = true;
  //                add(ColorBlueEvent());
  //               } else {
  //                 Cflage = false;
  //             add(ColorGreenEvent());
  //               }
  // }
  // }
}
