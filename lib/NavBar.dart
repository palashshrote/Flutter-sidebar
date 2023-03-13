import 'package:flutter/material.dart';
import 'package:sidebar_tutorial/main.dart';
import 'TimerSetting.dart';
import 'demo.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});
  @override

  // NavBar({this.t_sec});
  // final int t_sec;

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
          ),
          /*
          ListTile(
            leading: Icon(Icons.home),
            title: Text('HomePage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyApp();
                  },
                ),
              );
            },
          ),
          */
          ListTile(
              leading: Icon(Icons.timelapse),
              title: Text('Timer Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TimerSetting();
                    },
                  ),
                );
              }),
          ListTile(
            leading: Icon(Icons.desktop_mac_outlined),
            title: Text('Demo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyWidget();
                  },
                ),
              );
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
