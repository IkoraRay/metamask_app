import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/Activity/ActivityPage.dart';
import 'package:myapp/Pages/Info.dart';
import 'package:myapp/Pages/Options.dart';
import 'package:myapp/Pages/Wallet/WalletPage.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/widgets/test_card.dart';

import 'Pages/Wallet/WalletPage.dart';

void main() => runApp(MyApp());
enum WalletOptions {Edit, Remove, Copy }
enum PaymentOptions{Pay, Receive }
enum Wallets {All, Personal, College, Home}
enum Languages{English, Portugues, Francais,Espanol, Nippon}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoWallet',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,

      ),
     home : LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoginWidget();
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Test();
  }
}

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Activity();
  }
}
class OptionsPage extends StatelessWidget {
  const OptionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Options();
  }
}

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InfoPage();
  }
}





