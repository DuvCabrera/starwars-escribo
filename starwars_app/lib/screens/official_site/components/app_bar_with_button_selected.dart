import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermojiCircleAvatar.dart';
import 'package:starwars_app/screens/avatar_change/avatar_change_page.dart';

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
            child: ElevatedButton(onPressed: () => Navigator.pop(context),style: ElevatedButton.styleFrom(primary: Colors.amber), child: Text('Site Oficial',style: TextStyle(color: Colors.black),),),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: SizedBox(
              width: 55,
              child: GestureDetector(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarChangePage()));},
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
