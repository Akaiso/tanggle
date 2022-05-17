//import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';



class FakeSplashScreen extends StatefulWidget {
  const FakeSplashScreen({Key? key}) : super(key: key);

  @override
  _FakeSplashScreenState createState() => _FakeSplashScreenState();
}

class _FakeSplashScreenState extends State<FakeSplashScreen> {

  splash ()async{
    await Future.delayed(const Duration(milliseconds: 3000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
  }

  @override
  void initState() {
    super.initState();
    splash();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 500),
              height: 100,
              width: 100,
              child: const Icon(
                Icons.wine_bar_rounded,
                color: Colors.teal,
                size: 150,
              ),
            ),
            const SizedBox(height: 50,),
            const SizedBox(
                height: 50,
                width: 150,
                child: Expanded(
                    flex: 1,
                    child: FittedBox(
                        fit: BoxFit.cover,
                        child: Text(
                          'Tanggle',
                          style: TextStyle(
                              color: Colors.redAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 200),
                        ))))
          ],
        ),
      ),
    );
  }
}
