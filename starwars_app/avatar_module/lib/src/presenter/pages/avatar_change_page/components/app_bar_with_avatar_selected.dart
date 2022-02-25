import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class AppBarWithAvatarSelected extends StatelessWidget {
  const AppBarWithAvatarSelected(
      {Key? key, required this.size, required this.store})
      : super(key: key);

  final Size size;
  final AvatarStore store;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 25),
            child: ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed('/official-site'),
              style: ElevatedButton.styleFrom(primary: Colors.black),
              child: const Text(
                'Site Oficial',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0, bottom: 25),
            child: SizedBox(
              width: 55,
              child: GestureDetector(
                onTap: () async {
                  store.fill();
                  Modular.to.navigate('/');
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
