import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';
import 'component/product_card.dart';

class OrganicPage extends StatefulWidget {
  const OrganicPage({super.key});

  @override
  State<OrganicPage> createState() => _OrganicPageState();
}

class _OrganicPageState extends State<OrganicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Organic'),
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
            spacing: 6,
            runSpacing: 6,
            children: [
              ProductCard(imgAssets: 'assets/food_waste_product.png', title: 'Food Waste', desc: 'Recycling food waste can reduce waste in landfills.', price: 'Rp5000'),
              ProductCard(imgAssets: 'assets/dry_leaves.png', title: 'Dry Leaves', desc: 'Dry leaves can be used to create natural compost. ', price: 'Rp4000'),
              ProductCard(imgAssets: 'assets/newspaper_waste.png', title: 'Newspaper Waste', desc: 'Old newspaper are ideal of making craft projects. ', price: 'Rp6000'),
            ],
          ),
        ]
      ),
    );
  }
}
