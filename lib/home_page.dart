import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tanggle_splash_screen/home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Welcome to Tanggle',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}