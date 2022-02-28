import 'package:dependency_module/dependency_module.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../presenter.dart';

class FavoriteListingWidget extends StatefulWidget {
  const FavoriteListingWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FavoriteListingWidget> createState() => _FavoriteListingWidgetState();
}

class _FavoriteListingWidgetState
    extends ModularState<FavoriteListingWidget, FavoriteStore> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      if (store.filmList.isEmpty) {
        store.fill();
        return const ProgressWidget();
      } else {
        return ListViewWidget(
          list: store.filmList,
        );
      }
    });
  }
}
