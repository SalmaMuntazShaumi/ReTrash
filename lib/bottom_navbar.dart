import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/cart.dart';
import 'package:slashcom/pages/home.dart';
import 'package:slashcom/pages/news.dart';
import 'package:slashcom/pages/sell.dart';
import 'package:slashcom/pages/voucher.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const VoucherPage(),
    const SellPage(),
    const NewsPage(),
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: GNav(
        tabs: [
          // GButton(icon: MingCu.),
          // GButton(icon: IonIcons.),
          GButton(icon: IonIcons.home),
          GButton(icon: IonIcons.home),
          GButton(icon: IonIcons.home),
        ],
      ),
    );
  }
}
