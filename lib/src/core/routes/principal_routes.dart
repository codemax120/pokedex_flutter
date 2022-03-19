import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:pokedex_flutter/src/core/home/home_page.dart';

Route<dynamic> _commonPageWrapper(
    RouteSettings routeSettings, Widget Function(BuildContext) builder) {
  assert(builder != null);

  return MaterialWithModalsPageRoute(
    settings: routeSettings,
    builder: (context) => Container(
      color: Colors.black.withOpacity(0.4),
      child: SafeArea(
        bottom: false,
        top: false,
        child: builder(context),
      ),
    ),
  );
}

Route<dynamic> getNamedPage(RouteSettings routeSettings) {
  Widget Function(BuildContext) builder;
  switch (routeSettings.name) {
    case HomePage.routeName:
      builder = (context) => HomePage();
      break;
  }

  return _commonPageWrapper(routeSettings, builder);
}
