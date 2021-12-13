import 'package:facebook/detailsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, backgroundColor: Colors.white),
      home: const detailsPage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                flex: 2,
                child: Image.asset('assets/facebookLogo.png', width: 200)),
            Expanded(
                flex: 1,
                child: Image.asset('assets/facebookwhatsapp.png', width: 200))
          ],
        ),
      ),
    );
  }
}
