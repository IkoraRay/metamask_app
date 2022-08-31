import 'package:flutter/material.dart';

import '../main.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://cryptoslate.com/wp-content/uploads/2020/07/meta-mask-social.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Wallets'),
            onTap: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()))
            },
          ),
          
          ListTile(
            leading: Icon(Icons.article_outlined),
            title: Text('History'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ActivityPage()))
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> OptionsPage()))
            },
          ),

          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()))
            },
          ),
        ],
      ),
    );
  }
}