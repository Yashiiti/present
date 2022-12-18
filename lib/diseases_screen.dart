import 'package:flutter/material.dart';
import 'package:krishi_seva/models/diseases.dart';
import 'package:krishi_seva/pest_item.dart';

class DiseasesScreen extends StatelessWidget {
  final List<Disease> diseases;
  DiseasesScreen(this.diseases);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return PestItem(
            id: diseases[index].id,
            title: diseases[index].title,
            images: diseases[index].images,
          );
        },
        itemCount: diseases.length,
      ),
    );
  }
}
