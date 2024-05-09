import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';
import 'component/product_card.dart';

class InorganicPage extends StatefulWidget {
  const InorganicPage({super.key});

  @override
  State<InorganicPage> createState() => _InorganicPageState();
}

class _InorganicPageState extends State<InorganicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('InOrganic'),
          titleTextStyle:
          AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Wrap(
            clipBehavior: Clip.hardEdge,
            spacing: 8,
            runSpacing: 8,
            children: [
              ProductCard(imgAssets: 'assets/plastic_bottle.png', title: 'Plastic Bottle', desc: 'Used plastic bottles should be collected for recycling.', price: 'Rp4000'),
              ProductCard(imgAssets: 'assets/makeup_waste.png', title: 'Makeup Waste', desc: 'Dispose of makeup waste in designated trash bins properly.', price: 'Rp10000'),
              ProductCard(imgAssets: 'assets/glass_waste.png', title: 'Glass Waste', desc: 'Recycle glass waste to help reduce landfill accumulation.', price: 'Rp5000'),
            ],
          ),
        ],
      ),
    );
  }
}
