import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.character,
    required this.isFavorite,
    Key? key,
  }) : super(key: key);
  final bool isFavorite;
  final StarWarsCharacterEntity character;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    IconData icon = (isFavorite) ? Icons.favorite : Icons.favorite_border;
    return Container(
      height: 120,
      width: size.width,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: SizedBox(
                width: size.width * 0.65,
                child: Text(
                  character.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 20),
              child: Icon(icon),
            ),
          ],
        ),
      ),
    );
  }
}
