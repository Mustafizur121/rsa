import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Text('Home'),
              tileColor: Colors.grey.shade200,
            ),
            const ListTile(
              title: Text('Products'),
              tileColor: Colors.blue,
            ),
            const ListTile(
              title: Text('Stocks'),
            ),
            const ListTile(
              title: Text('Bills'),
            ),
            const ListTile(
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}