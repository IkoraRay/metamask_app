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

class BalanceCard extends StatefulWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  _BalanceCardState createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
   bool hidden = false;
   bool coin = false;
   String _crypto = "USD";
  String _value = "4.389.567,90";
  void _changestate(){
    setState(() {
      if(hidden == true){
        if(coin == true)
        _value = "4.389.567,90";
        else
          _value = "57.567,90";
        hidden = false;}
      else{
        _value = "*.***.***,**";
        hidden = true;
      }
    });
  }
  void _changecoin(){
    setState(() {
      if(coin == true){
        _crypto = "ETH";
        _value = "57.567,90";
        coin = false;
        hidden = false;
      }
      else{
        _crypto = "USD";
        _value = "4.389.567,90";
        coin = true;
        hidden = false;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [

        const SizedBox(width: 20, height: 100,),
        IconButton(onPressed: _changestate

        , icon: Icon(Icons.remove_red_eye_outlined), iconSize: 40, color: Colors.white,),
        TextButton(onPressed: _changecoin, child: Text(_crypto,textAlign: TextAlign.center, style: const TextStyle(fontSize: 15,color: Colors.white),),),

        Text(_value,textAlign: TextAlign.center, style: const TextStyle(fontSize: 30,color: Colors.white),),
        const SizedBox(width: 20, height: 100,),
      ],

    );
  }
}
