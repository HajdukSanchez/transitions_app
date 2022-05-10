import 'package:flutter/material.dart';

class PageTwoPage extends StatelessWidget {
  const PageTwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: const Center(
        child: Text('Hello PageTwoPage'),
      ),
    );
  }
}
