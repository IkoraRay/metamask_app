import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/payment-dialog.dart';
import 'package:myapp/widgets/receive-dialog.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/widgets/test_card.dart';

import '../main.dart';
class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.account_balance_wallet), iconSize: 20,),

            Text("Wallet",textAlign: TextAlign.start, style: const TextStyle(fontSize: 20),),const SizedBox(width: 175, height: 15,),

            PopupMenuButton(
                onSelected: (PaymentOptions result){
                  if(result == PaymentOptions.Pay){
                    showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => PaymentDialog());
                  }
                  if(result ==  PaymentOptions.Receive){
                    showDialog<void>(
                        context: context,
                        builder: (BuildContext context) => ReceiveDialog());
                  }
                },
                icon: Icon(Icons.attach_money),iconSize: 18,
                itemBuilder: (BuildContext context) => <PopupMenuEntry<PaymentOptions>>[
                  const PopupMenuItem<PaymentOptions>(
                    value: PaymentOptions.Pay,
                    child: Text('Pay'),
                  ),
                  const PopupMenuItem<PaymentOptions>(
                    value: PaymentOptions.Receive,
                    child: Text('Receive'),
                  ),
                ]
            ),

            PopupMenuButton(
              onSelected: (WalletOptions result) {
                if(result == WalletOptions.Edit){
                  showDialog<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Data Info"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const <Widget> [
                                Text("Address: a5be12cf521e577dc480baff046fa133"),
                                Text('Balance: US 2500,47')
                              ],
                            ),
                          ),
                        );
                      }
                  );
                }

              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry<WalletOptions>>[
                const PopupMenuItem<WalletOptions>(
                  value: WalletOptions.Edit,
                  child: Text('Info'),

                ),
                const PopupMenuItem<WalletOptions>(
                  value: WalletOptions.Copy,
                  child: Text('Copy Address'),
                ),
                const PopupMenuItem<WalletOptions>(
                  value: WalletOptions.Remove,
                  child: Text('Remove'),
                ),
              ],)
          ]),

    );
  }
}
