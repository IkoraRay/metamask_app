/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets, which means it defaults to [BottomNavigationBarType.fixed], and
// the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/Activity/BatWalletActPageBody.dart';
import 'package:myapp/Pages/Activity/TetWalletActPageBody.dart';
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

import 'EthWalletActPageBody.dart';


/// This is the stateful widget that the main application instantiates.
class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<Activity> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    EthWalletActPageBody(),
    TetWalletActPageBody(),
    BatWalletActPageBody()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: const Text('METAMASK'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.ethereum),
            label: 'Etherium',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.tether_plain),
            label: 'Tether',
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.bat_plain),
            label: 'BAT',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
