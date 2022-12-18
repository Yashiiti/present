import 'package:flutter/material.dart';
import 'package:krishi_seva/models/diseases.dart';

class DiseaseItem extends StatelessWidget {
  final String id;
  final String title;
  final List<String> images;

  DiseaseItem({
    required this.id,
    required this.images,
    required this.title,
  });

  // void selectMeal(ctx) {
  //   Navigator.of(ctx).pushNamed('/meal-detail', arguments: id);
  // }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black26,
      // onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.network(
                    images[0],
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      child: Text(
                        title,
                        style: const TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
