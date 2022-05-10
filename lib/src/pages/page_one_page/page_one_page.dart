import 'package:flutter/material.dart';

import 'package:transitions_app/src/pages/pages.dart';

class PageOnePage extends StatelessWidget {
  const PageOnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: const Center(
        child: Text('Hello PageOnePage'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_time),
        onPressed: () {
          Navigator.push(context, _createRoute());
        },
      ),
    );
  }

  /// Method with personalized navigation
  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) =>
            const PageTwoPage(),
        // transitionDuration: const Duration(milliseconds: 800),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final curvedAnimation = CurvedAnimation(parent: animation, curve: Curves.easeInOut);

          // return SlideTransition(
          //   position: Tween<Offset>(begin: const Offset(0.5, 1.0), end: Offset.zero)
          //       .animate(curvedAnimation),
          //   child: child, // Widget to animate
          // );

          // return ScaleTransition(
          //   child: child,
          //   scale: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation),
          // );

          return RotationTransition(
              child: child, turns: Tween<double>(begin: 0.0, end: 1.0).animate(curvedAnimation));
        });
  }
}
