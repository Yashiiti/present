import 'package:flutter/material.dart';
import 'package:krishi_seva/crop_item.dart';
import './data.dart';

class CropsPage extends StatelessWidget {
  final Function filter;
  CropsPage(this.filter);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 5 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children:
            crops.map((e) => CropItem(e.id, e.title, e.image, filter)).toList(),
      ),
    );
  }
}
