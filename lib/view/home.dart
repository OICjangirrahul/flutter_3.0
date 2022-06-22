import 'package:day1/blocs/Color_bloc/Color_bloc.dart';
import 'package:day1/blocs/Color_bloc/Color_event.dart';
import 'package:day1/view/widgets/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/Color_bloc/Color_state.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController emailC = TextEditingController();
  bool Flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day 1'),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          BlocBuilder<ColorBloc, ColorState>(
            builder: (context, state) {
              if(state is ColorBlueState){

              return Text(state.vari);
              }else{
                return Text("w");
              }
            },
          ),
          TextField(
            controller: emailC,
            onChanged: (value) {
              BlocProvider.of<ColorBloc>(context)
                  .add(ColorBlueEvent(int.parse(emailC.text)));
            },
            decoration: InputDecoration(hintText: "email"),
          ),
          ElevatedButton(
              onPressed: () {
                if (!Flag) {
                  Flag = true;
                } else {
                  Flag = false;
                }

                BlocProvider.of<ColorBloc>(context).add(ColorBlueEvent(int.parse(emailC.text)));
              },
              child: Text('ss111')),
          
        ],
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget MyCOntainet(BuildContext context, f) {
  return Container(
      height: 200, width: 200, color: f == false ? Colors.red : Colors.green);
}
