import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/cart.dart';
import 'package:slashcom/pages/home.dart';
import 'package:slashcom/pages/news.dart';
import 'package:slashcom/pages/sell.dart';
import 'package:slashcom/pages/voucher.dart';
import 'package:slashcom/theme/app_color.dart';

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
      bottomNavigationBar: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        child: GNav(
          selectedIndex: currentIndex,
          onTabChange: (index) => setState(() => currentIndex = index),
          backgroundColor: AppColors.buttonColor,
          padding: EdgeInsets.all(12),
          tabActiveBorder: Border.all(color: Colors.black, width: 1),
          tabMargin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          iconSize: 24,
          tabs: [
            GButton(icon: MingCute.home_3_line),
            GButton(icon: MingCute.sale_line),
            GButton(icon: MingCute.currency_dollar_2_line),
            GButton(icon: MingCute.news_line),
            GButton(icon: MingCute.shopping_cart_1_line),
          ],
        ),
      ),
    );
  }
}
