import 'package:day1/blocs/internet_bloc/internet_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/internet_bloc/internet_bloc.dart';
import '../../blocs/internet_bloc/internet_state.dart';

class MobileConnection extends StatelessWidget {
  const MobileConnection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: BlocConsumer<InternetBloc, InternetState>(
                listener: (context, state) {
                  if (state is InternetGainedState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Internet Connected'),
                        backgroundColor: Color.fromARGB(252, 61, 255, 2),
                        ));
                  }else if (state is InternetLostState){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Internet Not Connected'),
                        backgroundColor: Color.fromARGB(251, 255, 112, 2),
                        ));
                  }
                },
                builder: (context, state) {
                  if (state is InternetGainedState) {
                    return Text('Connected');
                  } else if (state is InternetLostState) {
                    return Text('Not Connected');
                  } else {
                    return Text('Loading...');
                  }
                },
              ),
              // child: BlocBuilder<InternetBloc, InternetState>(
              //   builder: (context, state) {
              //     if (state is InternetGainedState) {
              //       return Text('Connected');
              //     }else if(state is InternetLostState) {
              //       return Text('Not Connected');
              //     }else{
              //      return Text('Loading...');
              //     }
              //   },
              // ),


            ),
          ],
        ),
      ),
    );
  }
}
