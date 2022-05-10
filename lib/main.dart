import 'package:flutter/material.dart';

import 'package:transitions_app/src/enums/enums.dart';
import 'package:transitions_app/src/routes/routes.dart';
import 'package:transitions_app/src/helpers/helpers.dart';

void main() {
  setStatusBarTransparent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Transitions App',
      routes: routes,
      initialRoute: Routes.pageOne.name,
    );
  }
}
