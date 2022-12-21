import 'package:flutter/material.dart';
import 'package:krishi_seva/models/pests.dart';

class PestItem extends StatelessWidget {
  final String id;
  final String title;
  final List<String> images;

  PestItem({
    required this.id,
    required this.images,
    required this.title,
  });

  void selectPest(ctx) {
    Navigator.of(ctx).pushNamed('/pest-detail', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black26,
      onTap: () => selectPest(context),
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
