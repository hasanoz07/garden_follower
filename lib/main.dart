import 'package:flutter/material.dart';
import 'package:healty_follower/views/home_page_view.dart';
import 'package:healty_follower/views/onboard_view/onboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.light().copyWith(appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0)),
        home: HomePageView());
  }
}
