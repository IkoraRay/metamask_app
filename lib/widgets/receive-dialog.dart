import 'package:flutter/material.dart';
class ReceiveDialog extends StatelessWidget {
  const ReceiveDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text("Receive"),
      children: [
        Row(
          children: [
            const SizedBox(width: 10,height: 25,),
            const Text("Wallet Address:"),

          ],
        ),

        Row(
          children: [
            const SizedBox(width: 30,height: 25,),
            const Text("a5be12cf521e577dc480baff046fa133"),

          ],
        ),
         TextButton(
             onPressed: (){},
             child: Text("Copy Address"),
         ),
         Image.asset("lib/widgets/qrcode.png")
      ],
    );
  }
}
