import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, Container, Key, StatelessWidget, Widget;
class Saldo extends StatelessWidget {
  const Saldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
          child: Text("98.495.196.854,95"),
        ),
    );
  }
}
