import 'dart:async';

import 'package:flutter/material.dart';
import 'package:slashcom/pages/home.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/welcome/wp_first.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>WelcomePage()));});
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: Center(child: Image.asset('assets/logo.png', width: 310)),
      ),
    );
  }
}
