import 'package:flutter/material.dart';
import 'package:netflix_sliver/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowMaterialGrid: false,
        home: HomePage(),
        theme: ThemeData.dark(
          //scaffoldBackgroundColor: Colors.black,
          useMaterial3: false,
        )
        //appBarTheme: AppBarTheme(backgroundColor: Colors.black87)),
        );
  }
}
