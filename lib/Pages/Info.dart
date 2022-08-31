import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/nav-drawer.dart';
class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text("METAMASK"),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('lib/widgets/IMG_5777.JPG'),
          ),
          Text("Siga-me no insta: @ik0raray",style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}
