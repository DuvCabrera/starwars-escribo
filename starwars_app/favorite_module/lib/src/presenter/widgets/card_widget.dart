import 'package:flutter/material.dart';

import '../../domain/domain.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    required this.favorite,
    Key? key,
  }) : super(key: key);

  final StarWarsFavoriteEntity favorite;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final color = favorite.type == 'film' ? Colors.red : Colors.green;
    return Container(
      height: 120,
      width: size.width,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
        bottom: 8,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
          width: 3,
        ),
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
                  favorite.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
