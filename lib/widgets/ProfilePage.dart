import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/Wallet/WalletPage.dart';
import 'package:myapp/widgets/login-card.dart';
import 'package:myapp/widgets/login-widget.dart';
import 'package:myapp/widgets/balance.dart';
import 'package:myapp/widgets/nav-drawer.dart';
import 'package:myapp/widgets/test_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(
      ),
    );;
  }
}
