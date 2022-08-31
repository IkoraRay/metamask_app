/// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';



/// This is the stateless widget that the main application instantiates.
class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network('https://www.ledger.com/wp-content/uploads/2019/06/assets_logo_metamask.jpg'),
                TextButton(
                  child: const Text('LOGIN'),
                  onPressed: ()  {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: Text('Login account'),
                            children: [
                              SimpleDialogItem(
                                icon: Icons.account_circle,
                                color: Colors.orange,
                                text: 'user01@gmail.com',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                                },
                              ),
                              SimpleDialogItem(
                                icon: Icons.account_circle,
                                color: Colors.green,
                                text: 'user02@gmail.com',
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
                                },
                              ),
                              SimpleDialogItem(
                                icon: Icons.add_circle,
                                color: Colors.grey,
                                text: 'Add account',
                                onPressed: () {
                                  Navigator.pop(context, 'user02@gmail.com');
                                },
                              ),
                            ],
                          );
                        });

                  },
                ),
              ],

            )


    );
        //body: imagem,botao de login, verificar autolayout, horisontal stack, vertical stack



  }
}



class LoginDialog extends StatelessWidget {
  const LoginDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text('Login account'),
      children: [
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.orange,
          text: 'user01@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'user01@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.account_circle,
          color: Colors.green,
          text: 'user02@gmail.com',
          onPressed: () {
            Navigator.pop(context, 'user02@gmail.com');
          },
        ),
        SimpleDialogItem(
          icon: Icons.add_circle,
          color: Colors.grey,
          text: 'Add account',
          onPressed: () {
            Navigator.pop(context, 'user02@gmail.com');
          },
        ),
      ],
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({ Key? key, required this.icon, required this.color, required this.text, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}


