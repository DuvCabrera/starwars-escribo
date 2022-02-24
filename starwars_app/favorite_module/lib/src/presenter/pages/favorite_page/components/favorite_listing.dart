import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class FavoriteListingWidget extends StatefulWidget {
  const FavoriteListingWidget({Key? key, required this.store})
      : super(key: key);
  final FavoriteStore store;

  @override
  State<FavoriteListingWidget> createState() => _FavoriteListingWidgetState();
}

class _FavoriteListingWidgetState extends State<FavoriteListingWidget> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (widget.store.filmList.isEmpty) {
        widget.store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          list: widget.store.filmList,
        );
      }
    });
  }
}
