import 'package:flutter/material.dart';
import 'package:grid_to_list/src/screens/pages_navigator/pages_navigator_screen.dart';

main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Grid to List",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: PagesNavigatorScreen(),
    );
  }
}

