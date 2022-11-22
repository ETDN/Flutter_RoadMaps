import 'package:flutter/material.dart';
import 'package:flutter_crashcourse/screens/all_routes.dart';

import 'package:flutter_crashcourse/screens/drawer_item.dart';
import 'package:flutter_crashcourse/screens/favorites.dart';
import 'package:flutter_crashcourse/screens/map.dart';
import 'package:flutter_crashcourse/screens/settings.dart';

class DrawerNav extends StatelessWidget {
  const DrawerNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
            color: Color.fromRGBO(98, 156, 68, 1),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
              child: Column(
                children: [
                  headerWidget(),
                  const SizedBox(
                    height: 40,
                  ),
                  const Divider(
                    thickness: 1,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                      name: 'Maps',
                      icon: Icons.map,
                      onPressed: () => onItemPressed(context, index: 0)),
                  DrawerItem(
                      name: 'All routes',
                      icon: Icons.electric_bike,
                      onPressed: () => onItemPressed(context, index: 1)),
                  DrawerItem(
                      name: 'Favorites',
                      icon: Icons.favorite,
                      onPressed: () => onItemPressed(context, index: 2)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    thickness: 1,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                      name: 'Settings',
                      icon: Icons.settings,
                      onPressed: () => onItemPressed(context, index: 3)),
                  DrawerItem(
                      name: 'Logout',
                      icon: Icons.logout,
                      onPressed: () => onItemPressed(context, index: 4)),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            )));
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MapPage()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AllRoutes()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Favorites()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Settings()));
        break;
      default:
        Navigator.pop(context);
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('My account',
                style: TextStyle(fontSize: 15, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('emilie@gmail.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
