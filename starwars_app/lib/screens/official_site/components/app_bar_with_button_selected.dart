import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';

class AppBarWithButtonSelectedWidget extends StatelessWidget {
  const AppBarWithButtonSelectedWidget({Key? key, required this.size})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 0),
            child: ElevatedButton(onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/')),style: ElevatedButton.styleFrom(primary: Colors.amber), child: const Text('Site Oficial',style: TextStyle(color: Colors.black),),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: SizedBox(
              width: 55,
              child: GestureDetector(onTap: () {Navigator.of(context).pushNamed('/avatar-change');},
                child: FluttermojiCircleAvatar(
                  radius: 75,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
