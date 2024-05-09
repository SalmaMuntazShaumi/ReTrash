import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class ProductCard extends StatefulWidget {
  String imgAssets, title, desc, price;
  ProductCard({super.key, required this.imgAssets, required this.title, required this.desc, required this.price});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 160,
        height: 190,
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.productCardBackgroundColor
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.imgAssets),
                const SizedBox(height: 2),
                Text(widget.title, style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 12)),
                const SizedBox(height: 2),
                Text(widget.desc, style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 10))
              ],
            ),
            Spacer(),
            Align(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(widget.price, style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                SizedBox(height: 4),
                GestureDetector(onTap: (){

                }, child: Icon(MingCute.heart_line, size: 18)),
              ],
            ), alignment: Alignment.bottomRight,)
          ],
        ),
      ),
    );
  }
}
