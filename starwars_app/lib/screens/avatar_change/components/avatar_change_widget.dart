import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

class AvatarChangeWidget extends StatelessWidget {
  const AvatarChangeWidget({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.62, decoration: BoxDecoration(color: Colors.grey[800]),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: FluttermojiCircleAvatar(backgroundColor: Colors.black,
              radius: 55,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 32.0, left: 32),
              child: FluttermojiCustomizer(showSaveWidget: true, outerTitleText: "",
                scaffoldHeight: 220,),
            ),
        ],
      ),
    );
  }
}
