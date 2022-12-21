import 'package:flutter/material.dart';
import 'package:krishi_seva/crops_screen.dart';
import 'package:krishi_seva/data.dart';
import 'package:krishi_seva/models/diseases.dart';
import 'package:krishi_seva/models/pests.dart';
import 'package:krishi_seva/pest_details.dart';
import 'package:krishi_seva/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Pest> _pests = allPests;
  List<Disease> _diseases = allDiseases;
  String _cropTitle = 'Crop';

  void filter(String cropID, String cropTitle) {
    _cropTitle = cropTitle;
    _pests = allPests.where((pest) {
      return pest.crop == cropID;
    }).toList();
    _diseases = allDiseases.where((disease) {
      return disease.crop == cropID;
    }).toList();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Krishi Seva',
      theme: ThemeData(
          primarySwatch: Colors.green,
          canvasColor: const Color.fromRGBO(190, 225, 168, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                bodyText1:
                    const TextStyle(color: Color.fromARGB(255, 1, 52, 11)),
                bodyText2:
                    const TextStyle(color: Color.fromARGB(255, 17, 74, 27)),
                caption: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold),
              )),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Krishi Seva'),
        ),
        body: CropsPage(filter),
      ),
      routes: {
        '/crop-details': (ctx) => TabsScreen(_cropTitle, _pests, _diseases),
        '/pest-detail': (ctx) => PestDetailsScreen(),
      },
    );
  }
}
