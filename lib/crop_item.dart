import 'package:flutter/material.dart';
// import 'package:section_seven/category_meals_screen.dart';

class CropItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final Function filter;

  CropItem(this.id, this.title, this.image, this.filter);

  void selectCategory(BuildContext ctx) {
    filter(id, title);
    Navigator.of(ctx)
        .pushNamed('/crop-details', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor.withOpacity(0.7),
      borderRadius: BorderRadius.circular(10),
      child: Container(
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withOpacity(0.7),
          ),
          child: Text(
            title,
            style: Theme.of(context).textTheme.caption,
          ),
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.green, width: 3.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.lightGreen.withOpacity(0.25), BlendMode.lighten),
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
