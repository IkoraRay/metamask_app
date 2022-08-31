import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/Activity/ActivityPage.dart';
import 'package:myapp/Pages/Wallet/WalletPage.dart';
import 'package:myapp/main.dart';
import 'package:myapp/widgets/checkbox.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/widgets/test_card.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text("METAMASK"),
      ),
      body: ListView(
        children: [
          Card(
            child:ListTile(
              title: Text('Show value on startup'),
              trailing: Check(),

              ),
            ),
          Card(
            child:ListTile(
              title: Text('Show converted value on startup'),
              trailing: Check(),

            ),
          ),
          Card(
            child:ListTile(
              title: Text('Require password for transfer'),
              trailing: Check(),

            ),
          ),
          Card(
            child:ListTile(
              title: Text('Show wallets address'),
              trailing: Check(),

            ),
          ),
          Card(
            child:ListTile(
              title: Text('Show transfer values on history cards'),
              trailing: Check(),

            ),
          ),
          Card(
            child:ListTile(
              title: Text('Show wallets address on history cards'),
              trailing: Check(),

            ),
          ),
          Card(
            child:ListTile(
              title: Text('Language'),
              trailing: PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<Languages>>[
                    const PopupMenuItem<Languages>(
                      value: Languages.English,
                      child: Text('English'),
                    ),
                    const PopupMenuItem<Languages>(
                      value: Languages.Portugues,
                      child: Text('Português'),
                    ),
                    const PopupMenuItem<Languages>(
                      value: Languages.Francais,
                      child: Text('Français'),
                    ),
                    const PopupMenuItem<Languages>(
                      value: Languages.Espanol,
                      child: Text('Español'),
                    ),
                    const PopupMenuItem<Languages>(
                      value: Languages.Nippon,
                      child: Text('日本語'),
                    ),

                  ],
              ),

            ),
          ),
          Card(
            child:ListTile(
              onTap: () =>{
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Info()))
              },
              title: Text('App info'),

            ),
          ),

          ]),
    );
  }
}
