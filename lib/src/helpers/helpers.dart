import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as services;

/// Set status bar with darkness icons and background transparent
void setStatusBarTransparent() {
  services.SystemChrome.setSystemUIOverlayStyle(const services.SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark));
}
