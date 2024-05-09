import 'package:flutter/material.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class VoucherButton extends StatefulWidget {
  String title, desc;

  VoucherButton({super.key, required this.title, required this.desc});

  @override
  State<VoucherButton> createState() => _VoucherButtonState();
}

class _VoucherButtonState extends State<VoucherButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 18),
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.yellowColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset('assets/sale.png', width: 62),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.title, style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 18)),
                      Text(widget.desc, style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                    ],
                  )
                ],
              ),
            ),
            Image.asset('assets/icons/chevron-right.png', width: 32)
          ],
        ),
      ),
    );
  }
}
