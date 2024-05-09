import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class NewsCard extends StatefulWidget {
  String imgAsset, title, date, like, view;
  NewsCard({super.key, required this.imgAsset, required this.title, required this.date, required this.like, required this.view});

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.productCardBackgroundColor
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Image.asset(widget.imgAsset, height: 100, width: 110),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 180 ,child: Text(widget.title, style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14), overflow: TextOverflow.clip, maxLines: 4,)),
                      Text(widget.date, style: AppTextStyle.appRegulerItalicTextStyle(AppColors.blackColor, 12))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Divider(color: AppColors.greyColor, height: 2),
            SizedBox(height: 12),
            Container(
              height: 20,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(MingCute.heart_line, size: 24),
                        SizedBox(width: 4),
                        Text(widget.like, style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12))
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  VerticalDivider(color: AppColors.greyColor, thickness: 2, width: 10,),
                  SizedBox(width: 8),
                  Container(
                    child: Row(
                      children: [
                        Icon(MingCute.eye_2_line, size: 24),
                        SizedBox(width: 4),
                        Text(widget.view, style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
