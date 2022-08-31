import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/payment-dialog.dart';
import 'package:myapp/widgets/receive-dialog.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/widgets/balance-state.dart';
import 'package:myapp/widgets/test_card.dart';

import '../../main.dart';

class TetherPageBody extends StatelessWidget {
  const TetherPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(

        children: [
          /* Divider(height: 20,
            thickness: 10,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFFFFF),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10,height: 15,),
              Text("Your Total Balance:", textAlign: TextAlign.start, style: const TextStyle(color: Colors.white),),
            ],
          ),*/
          Container(
              color: Colors.deepOrange,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,height: 25,),
                      Text("Your Total Balance:", textAlign: TextAlign.start, style: const TextStyle(color: Colors.white),),

                    ],
                  ),
                  BalanceCard(),
                ],
              )
          ),
          Divider(height: 20,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            color: Color(0xFFFFFF),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 10,height: 15,),
              Text("Your Wallets:", textAlign: TextAlign.start,),
            ],
          ),

          Card(
            child: Row(
                children: [
                  const SizedBox(width: 15, height: 45,),
                  Text("Personal",textAlign: TextAlign.start, style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 35, height: 45,),
                  Text("tht",style: const TextStyle(fontSize: 12),),
                  const SizedBox(width: 5,height: 45,),
                  Text("1651,04", style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 75, height: 45,),
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
                          child: Text('Withdraw'),
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

          ),
          Card(
            child: Row(
                children: [
                  const SizedBox(width: 15, height: 45,),
                  Text("College",textAlign: TextAlign.start, style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 47, height: 45,),
                  Text("tht",style: const TextStyle(fontSize: 12),),
                  const SizedBox(width: 5,height: 45,),
                  Text("1784,95", style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 75, height: 45,),
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
                          child: Text('Withdraw'),
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

          ),
          Card(
            child: Row(
                children: [
                  const SizedBox(width: 15, height: 45,),
                  Text("Home ",textAlign: TextAlign.start, style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 55, height: 45,),
                  Text("tht",style: const TextStyle(fontSize: 12),),
                  const SizedBox(width: 5,height: 45,),
                  Text("4310,57", style: const TextStyle(fontSize: 20),),
                  const SizedBox(width: 75, height: 45,),
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
                          child: Text('Withdraw'),
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

          ),






        ]);
  }
}
