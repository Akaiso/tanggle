//import 'dart:js';

import 'package:flutter/material.dart';
import 'home_page.dart';


class FakeSplashScreen extends StatefulWidget {
  const FakeSplashScreen({Key? key,}) : super(key: key);

  @override
  _FakeSplashScreenState createState() => _FakeSplashScreenState();
}

class _FakeSplashScreenState extends State<FakeSplashScreen> with SingleTickerProviderStateMixin{

  splash ()async{
    await Future.delayed(const Duration(milliseconds: 3000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
  }

   late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    splash();
    controller = AnimationController(duration: Duration(seconds: 3), vsync: this, );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.wine_bar_rounded,
              color: Colors.teal,
              size: animation.value*200,
            ),
            const SizedBox(
                height: 50,
                width: 150,
                child: FittedBox(
                    fit: BoxFit.cover,
                    child: Hero(
                      tag: 'logo',
                      child: Text(
                        'Tanggle',
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 200),
                      ),
                    )))
          ],
        ),
      ),
    );
  }
}
