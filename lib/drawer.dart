import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
            child: const Text(
              'Krishi Seva',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.info,
              size: 26,
            ),
            title: const Text(
              'Information',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.pan_tool,
              size: 26,
            ),
            title: const Text(
              'Potato Pest Manager',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/potatopest');
            },
          )
        ],
      ),
    );
  }
}
