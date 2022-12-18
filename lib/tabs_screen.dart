import 'package:flutter/material.dart';
import 'package:krishi_seva/diseases_screen.dart';
import 'package:krishi_seva/models/diseases.dart';
import 'package:krishi_seva/models/pests.dart';
import 'package:krishi_seva/pests_screen.dart';

class TabsScreen extends StatefulWidget {
  final String cropTitle;
  final List<Pest> pests;
  final List<Disease> diseases;
  TabsScreen(this.cropTitle, this.pests, this.diseases);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>>? _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': PestsScreen(widget.pests), 'title': '${widget.cropTitle} Pests'},
      {
        'page': DiseasesScreen(widget.diseases),
        'title': '${widget.cropTitle} Diseases',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages![_selectedPageIndex]['title'] as String),
      ),
      body: _pages![_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.green[800],
        selectedItemColor: Colors.white,
        unselectedFontSize: 14,
        selectedFontSize: 16,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Pests'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Diseases'),
        ],
      ),
    );
  }
}
