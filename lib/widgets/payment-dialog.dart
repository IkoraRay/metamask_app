import 'package:flutter/material.dart';
class PaymentDialog extends StatelessWidget {
  const PaymentDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
          return SimpleDialog(
            title: const Text("Withdraw"),
            children: [
              Row(
                children: [
                  const SizedBox(width: 10,height: 25,),
                  const Text("Be careful! Make sure you are sending your"),

                ],
              ),
              Row(
                children: [
                  const SizedBox(width: 10,height: 25,),
                  const Text("cryptocurrency to a Etherium wallet."),

                ],
              ),
              Divider(height: 10,
                thickness: 5,
                indent: 20,
                endIndent: 20,
                color: Colors.white,),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(

                  labelText: 'Address: Only Copy/Paste input',
                ),
              ),
              Divider(height: 20,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              color: Colors.white,),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(

                  labelText: 'Amount',
                ),
              ),
              Divider(height: 20,
                thickness: 5,
                indent: 20,
                endIndent: 20,
                color: Colors.white,),
              ElevatedButton(

                  onPressed: (){},
                  child: const Text("Pay")
              )
            ],
          );

  }
}
