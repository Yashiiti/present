import 'package:flutter/material.dart';
import 'package:krishi_seva/data.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PestDetailsScreen extends StatelessWidget {
  Widget buildSectionTitle(String text, BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Text(
          text,
          style: Theme.of(context).textTheme.caption,
        ));
  }

  Widget buildContainer(Widget child, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: double.infinity,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pestId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedPest = allPests.firstWhere((pest) => pest.id == pestId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPest.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                aspectRatio: 16 / 9,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.25,
              ),
              items: selectedPest.images.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(
                          selectedPest.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            buildSectionTitle("Symptoms", context),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                      color: Colors.green[300],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        child: Text(
                          selectedPest.symptoms[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                  itemCount: selectedPest.symptoms.length,
                ),
                context),
            buildSectionTitle("Identification", context),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Column(children: [
                    ListTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}'),
                          backgroundColor: Colors.green[300],
                          foregroundColor: Colors.black,
                        ),
                        title: Text(
                          selectedPest.identification[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )),
                    const Divider(
                      color: Colors.black26,
                      thickness: 1.5,
                    )
                  ]),
                  itemCount: selectedPest.identification.length,
                ),
                context),
            buildSectionTitle("Management", context),
            buildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                      color: Colors.green[300],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        child: Text(
                          selectedPest.management[index],
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                  itemCount: selectedPest.management.length,
                ),
                context),
          ],
        ),
      ),
    );
  }
}
