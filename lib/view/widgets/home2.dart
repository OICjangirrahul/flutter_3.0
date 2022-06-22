import 'package:day1/blocs/sign_in/sign_in_event.dart';
import 'package:day1/view/widgets/navigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/sign_in/sign_in_bloc.dart';
import '../../blocs/sign_in/sign_in_state.dart';

class Home2 extends StatefulWidget {
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: MySeachDeligate());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              if (state is SignInErrorState) {
                return Text(state.errorMessage);
              } else {
                return Container();
              }
            },
          ),
          TextField(
            controller: emailC,
            onChanged: (value) {
              BlocProvider.of<SignInBloc>(context)
                  .add(SignInChangedEvent(emailC.text, passC.text));
            },
            decoration: InputDecoration(hintText: "email"),
          ),
          SizedBox(height: 10),
          TextField(
            controller: passC,
                onChanged: (value) {
              BlocProvider.of<SignInBloc>(context)
                  .add(SignInChangedEvent(emailC.text, passC.text));
            },
            decoration: InputDecoration(hintText: "age"),
          ),
          BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              return Text(
                'okk',
                style: TextStyle(
                    color: (state is SignInValiddState)
                        ? Colors.blue
                        : Color.fromARGB(255, 175, 12, 12)),
              );
            },
          )
        ],
      ),
    );
  }
}

class MySeachDeligate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear));
  }

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(query),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestions = ['brazil', 'indai', 'usa'];
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestions as String;
            showResults(context);
          },
        );
      },
    );
  }
}
