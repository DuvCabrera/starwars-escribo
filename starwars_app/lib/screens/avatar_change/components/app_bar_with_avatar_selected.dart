import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';
import 'package:starwars_app/screens/official_site/official_site_page.dart';

class AppBarWithAvatarSelected extends StatelessWidget {
  const AppBarWithAvatarSelected({Key? key, required this.size})
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
            padding: const EdgeInsets.only(left: 16, top: 0),
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OfficialSitePage(),
                ),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                'Site Oficial',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: SizedBox(
              width: 55,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
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
