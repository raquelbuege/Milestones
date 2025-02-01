import 'package:flutter/material.dart';
import 'package:milestones/userVM.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'navbar.dart';
import 'profile.dart';
import 'tasks.dart';
void main() {
  runApp(
    ChangeNotifierProvider<UserViewModel>(
      create: (context) => UserViewModel(), // Provide UserViewModel
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff2F8D46),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const Navbar(),
    );
  }
}







