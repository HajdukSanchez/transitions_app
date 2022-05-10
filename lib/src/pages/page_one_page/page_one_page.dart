import 'package:flutter/material.dart';

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
        onPressed: () {},
      ),
    );
  }
}
