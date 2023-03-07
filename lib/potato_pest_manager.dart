import 'package:flutter/material.dart';
import 'package:krishi_seva/drawer.dart';

class PotatoPestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: const Text('Krishi Seva'),
      ),
      body: const Text('Potato Pest Manager'),
      // body: ListView.builder(
      //   physics: const NeverScrollableScrollPhysics(),
      //   shrinkWrap: true,
      //   itemBuilder: (ctx, index) {
      //     return PestItem(
      //       id: diseases[index].id,
      //       title: diseases[index].title,
      //       images: diseases[index].images,
      //     );
      //   },
      //   itemCount: diseases.length,
    );
  }
}
