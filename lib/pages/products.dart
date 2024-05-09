import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/component/product_card.dart';
import 'package:slashcom/pages/detail_products.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';
import 'component/categories_card.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Products'),
          titleTextStyle:
          AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.greyColor,
                    ),
                    child: Image.asset('assets/icons/filter.png', width: 24),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: TextField(
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        filled: false,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                            BorderSide(color: AppColors.blackColor)),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                        hintText: 'Search News',
                        hintStyle:
                        AppTextStyle.appRegulerTextStyle(Colors.grey, 14),
                        suffixIcon: Container(
                          padding: EdgeInsets.all(12),
                          child: Image.asset('assets/icons/search.png'),
                          width: 20,
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text('Categories', style: AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 16)),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: OrganicCard()),
                SizedBox(width: 10),
                Expanded(child: InorganicCard()),
              ],
            ),
            SizedBox(height: 40),
            Wrap(
              clipBehavior: Clip.hardEdge,
              spacing: 8,
              runSpacing: 8,
              children: [
                ProductCard(imgAssets: 'assets/food_waste_product.png', title: 'Food Waste', desc: 'Recycling food waste can reduce waste in landfills.', price: 'Rp5000'),
                ProductCard(imgAssets: 'assets/plastic_bottle.png', title: 'Plastic Bottle', desc: 'Used plastic bottles should be collected for recycling.', price: 'Rp4000'),
                ProductCard(imgAssets: 'assets/dry_leaves.png', title: 'Dry Leaves', desc: 'Dry leaves can be used to create natural compost. ', price: 'Rp4000'),
                ProductCard(imgAssets: 'assets/makeup_waste.png', title: 'Makeup Waste', desc: 'Dispose of makeup waste in designated trash bins properly.', price: 'Rp10000'),
                ProductCard(imgAssets: 'assets/glass_waste.png', title: 'Glass Waste', desc: 'Recycle glass waste to help reduce landfill accumulation.', price: 'Rp5000'),
                ProductCard(imgAssets: 'assets/newspaper_waste.png', title: 'Newspaper Waste', desc: 'Old newspaper are ideal of making craft projects. ', price: 'Rp6000'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
