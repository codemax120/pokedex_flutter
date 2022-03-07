import 'package:connectivity_widget/connectivity_widget.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/src/core/home/home_page.dart';
import 'package:pokedex_flutter/src/core/network/error_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConnectivityUtils.initialize(serverToPing: "https://google.com/");

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: ConnectivityWidget(
          showOfflineBanner: false,
          builder: (context, isOnline) {
            if (isOnline) {
              return HomePage();
            } else {
              return NoInternetConnectionPage();
            }
          },
        ),
      ),
    );
  }
}
