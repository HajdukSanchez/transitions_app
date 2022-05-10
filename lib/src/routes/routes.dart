import 'package:flutter/material.dart';

import 'package:transitions_app/src/enums/enums.dart';
import 'package:transitions_app/src/pages/pages.dart';

/// Map with the routes of the application
Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  Routes.pageOne.name: (context) => const PageOnePage(),
  Routes.pageTwo.name: (context) => const PageTwoPage(),
};
