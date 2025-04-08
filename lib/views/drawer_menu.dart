import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:ListView(
        children: [
          UserAccountsDrawerHeader(accountName: Text('Yash Mehrotra'), 
          accountEmail: Text('mehrotrayash2005@gmail.com'),currentAccountPicture:Icon(Icons.person_2_rounded)),
          ListTile(title: Text('Home'),leading: Icon(Icons.home_filled),),
          ListTile(title: Text('About'),leading: Icon(Icons.info_outline),),
          ListTile(title: Text('Settings'),leading: Icon(Icons.settings),onLongPress: (){
          },),
          ListTile(title: Text('Theme'),leading: Icon(Icons.brightness_2_outlined),),
          Divider(),
          ListTile(title: Text('Log Out'),leading: Icon(Icons.logout_outlined),)
        ],
      )
    );
  }
}
