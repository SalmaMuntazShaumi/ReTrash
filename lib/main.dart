import 'package:flutter/material.dart';
import 'package:slashcom/bottom_navbar.dart';
import 'package:slashcom/pages/cart.dart';
import 'package:slashcom/pages/login_regis/login.dart';
import 'package:slashcom/pages/login_regis/regis.dart';
import 'package:slashcom/pages/news.dart';
import 'package:slashcom/pages/payment_page.dart';
import 'package:slashcom/pages/profile.dart';
import 'package:slashcom/pages/sell.dart';
import 'package:slashcom/pages/voucher.dart';
import 'package:slashcom/welcome/splash_screen.dart';

import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const SplashScreen(),

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/bottomNav': (context) => const BottomNavbar(),
        '/home': (context) => const HomePage(),
        '/voucher': (context) => const VoucherPage(),
        '/sell': (context) => const SellPage(),
        '/news': (context) => const NewsPage(),
        '/cart': (context) => const CartPage(),
        '/profile': (context) => const ProfilePage(),
        '/payment': (context) => const PaymentPage(),
      },
    );
  }
}