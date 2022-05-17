import 'package:day1/view/home.dart';
import 'package:day1/view/widgets/home2.dart';
import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader2(context),
            buildHeader(context, icon: Icons.arrow_back, title: 'back',
                fun: () {
              Navigator.pop(context);
            }),
            buildHeader(context,
                icon: Icons.people,
                title: 'pepole',
                fun: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Home2()))),
            buildHeader(context, icon: Icons.search, title: 'search'),
            const Divider(),
            buildHeader(context, icon: Icons.mobile_friendly, title: 'mobile'),
            buildHeader(context, icon: Icons.aspect_ratio),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context, {icon, title = 'rahul', fun}) =>
    Container(
      padding: const EdgeInsets.all(10),
      child: Wrap(
        runSpacing: 14,
        children: [
          ListTile(
            leading: Icon(
              icon,
            ),
            title: Text(title),
            onTap: () {
              //  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Home2()) );
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => Home2()));
              // Navigator.pop(context);
              fun();
            },
          )
        ],
      ),
    );

Widget buildHeader2(BuildContext context) => Material(
      color: Color.fromARGB(121, 42, 6, 202),
      child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            //color: Color.fromARGB(121, 42, 6, 202),
            padding: EdgeInsets.only(top: 3),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage(
                      'https://static.wikia.nocookie.net/narutostuff/images/0/07/Narutostuff_wiki_pics.jpg/revision/latest?cb=20110507011552'),
                ),
                Text(
                  'Rahul jangir',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
                Text(
                  'Rahuljangir139@gmail.com',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )
              ],
            ),
          )),
    );
