import 'package:flutter/material.dart';
import 'package:pokedex_flutter/src/core/home/home_page.dart';
import 'package:pokedex_flutter/src/core/routes/principal_routes.dart';
import 'package:pokedex_flutter/src/core/theme/pokedex_theme.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // WidgetFlutterBinding is used to interact with the Flutter engine
  runApp(PokedexApp(initialRoute: HomePage.routeName));
}

class PokedexApp extends StatelessWidget {
  final String initialRoute;

  PokedexApp({
    Key key,
    this.initialRoute = '/',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: appTheme,
      initialRoute: initialRoute,
      onGenerateRoute: getNamedPage,
    );
  }
}
