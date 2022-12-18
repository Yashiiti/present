import 'package:flutter/material.dart';
import 'package:krishi_seva/pest_item.dart';
import 'package:krishi_seva/models/pests.dart';

class PestsScreen extends StatelessWidget {
  final List<Pest> pests;
  PestsScreen(this.pests);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return PestItem(
            id: pests[index].id,
            title: pests[index].title,
            images: pests[index].images,
          );
        },
        itemCount: pests.length,
      ),
    );
  }
}
