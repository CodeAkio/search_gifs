import 'package:flutter/material.dart';
import 'package:search_gifs/modules/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search Gifs",
      home: HomePage(),
      theme: ThemeData(hintColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}
