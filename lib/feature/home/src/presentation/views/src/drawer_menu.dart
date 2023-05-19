import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width/2,
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // handle item 1 tap
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // handle item 2 tap
            },
          ),
        ],
      ),
    );
  }
}
