import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:provider/provider.dart';
import 'package:starwars_app/models/providers/avatar.dart';

class AppBarWithAvatarSelected extends StatelessWidget {
  const AppBarWithAvatarSelected({Key? key, required this.size})
      : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    AvatarProvider avatar = Provider.of<AvatarProvider>(context);
    return SizedBox(
      height: size.height * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 25),
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/official-site'),
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                'Site Oficial',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0,bottom: 25),
            child: SizedBox(
              width: 55,
              child: GestureDetector(
                onTap: () async {
                  avatar.startAvatar();
                  Navigator.popUntil(context, ModalRoute.withName('/') );
                },
                child: FluttermojiCircleAvatar(
                  backgroundColor: Colors.amber,
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
