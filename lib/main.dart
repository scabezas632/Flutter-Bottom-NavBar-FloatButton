import 'package:navigation_with_action_button/fab_bottom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// Pages
import 'package:navigation_with_action_button/pages/first.dart';
import 'package:navigation_with_action_button/pages/second.dart';
import 'package:navigation_with_action_button/pages/third.dart';
import 'package:navigation_with_action_button/pages/fourth.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget _currentScreen = FirstTab();

  final List<Widget> screens = [
    FirstTab(), SecondTab(), ThirdTab(), FourthTab()
  ];

  void _selectedTab(int index) {
    setState(() {
      _currentScreen = screens[index];
    });
  }

  void _showToast(BuildContext context) {
    debugPrint('HOLA');
    // final scaffold = Scaffold.of(context);
    // scaffold.showSnackBar(
    //   SnackBar(
    //     content: const Text('Mostrar busqueda'),
    //     action: SnackBarAction(
    //         label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav With Button'),
      ),
      body: _currentScreen,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showToast(context),
        child: Icon(Icons.search),
        elevation: 2.0,
      ),
      bottomNavigationBar: FABBottomAppBar(
        onTabSelected: _selectedTab,
        selectedColor: Colors.blueAccent,
        notchedShape: CircularNotchedRectangle(),
        items: [
          FABBottomAppBarItem(iconData: Icons.menu, text: 'Menu'),
          FABBottomAppBarItem(iconData: Icons.favorite, text: 'Favoritos'),
          FABBottomAppBarItem(iconData: Icons.settings, text: 'Cuenta'),
          FABBottomAppBarItem(iconData: Icons.dashboard, text: 'Otro'),
        ]
      )
    );
  }
}