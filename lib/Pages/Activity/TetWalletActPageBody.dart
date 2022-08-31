import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/Wallet/BatPageBody.dart';
import 'package:myapp/Pages/Wallet/TetherPageBody.dart';
import 'package:myapp/widgets/custom_icons_icons.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/payment-dialog.dart';
import 'package:myapp/widgets/receive-dialog.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/Pages/Wallet/EthereumPageBody.dart';
import 'package:myapp/widgets/test_card.dart';
import 'package:myapp/main.dart';

class TetWalletActPageBody extends StatelessWidget {
  const TetWalletActPageBody ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 15,),

            const Text("Activity",style: TextStyle(fontSize: 25),textAlign: TextAlign.end,),
            PopupMenuButton<Wallets>(
                icon: Icon(Icons.filter_list),
                itemBuilder: (BuildContext context)=> <PopupMenuEntry<Wallets>>[
                  const PopupMenuItem<Wallets>(
                    value: Wallets.All,
                    child: Text('All'),
                  ),
                  const PopupMenuItem<Wallets>(
                    value: Wallets.Personal,
                    child: Text('Personal'),
                  ),
                  const PopupMenuItem<Wallets>(
                    value: Wallets.College,
                    child: Text('College'),
                  ),
                  const PopupMenuItem<Wallets>(
                    value: Wallets.Home,
                    child: Text('Home'),
                  ),
                ])
          ],
        ),
        Card(
          child: ListTile(
            title: Text('Personal'),
            subtitle: Text('to 314cc2d15a83ffd3bb7e6687334b0ad5'),
            trailing: Text("TET -1276,76", style: TextStyle(color: Colors.red),),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Home'),
            subtitle: Text('to 8c1ffef44cde647508413fb266decd84'),
            trailing: Text("TET -10180,30", style: TextStyle(color: Colors.red),),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('College'),
            subtitle: Text('from 674e76598733bded94edc1d9ea141220'),
            trailing: Text("TET 9109,21", style: TextStyle(color: Colors.green),),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('Personal'),
            subtitle: Text('from c33047ec3dc9f2bb861ec3eef091d39d'),
            trailing: Text("TET 11512,88", style: TextStyle(color: Colors.green),),
          ),
        ),
        Card(
          child: ListTile(
            title: Text('College'),
            subtitle: Text('to 290d48c461939ff8972e5ff6d50c6a86'),
            trailing: Text("TET -4878,44", style: TextStyle(color: Colors.red),),
          ),
        ),

      ],
    );
  }
}
