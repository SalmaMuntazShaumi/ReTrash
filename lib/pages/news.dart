import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slashcom/pages/component/news_card.dart';
import 'package:slashcom/theme/app_color.dart';

import '../theme/app_text_style.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('News'),
          titleTextStyle:
              AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
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
            SizedBox(height: 30),
            Text('Hottest News',
                style: AppTextStyle.appMediumTextStyle(
                    AppColors.titleTextColor, 18)),
            SizedBox(height: 18),
            NewsCard(
                imgAsset: 'assets/kerajinan.png',
                title:
                    'Pengusaha asal Bandung sukses menjual tas dari limbah minuman plastik',
                date: 'Wednesday, 08 Mei 2024',
                like: '102',
                view: '20k'),
            NewsCard(
                imgAsset: 'assets/pupuk.png',
                title:
                    'Tips dari pemuda asal NTB dalam mengolah pupuk kompos mandiri',
                date: 'Sunday, 14 February 2024',
                like: '568',
                view: '25k'),
            NewsCard(
                imgAsset: 'assets/vas.png',
                title:
                    'Kreasi vas bunga dari botol plastik yang laku dijual di blok M',
                date: 'Friday, 29 March 2024',
                like: '451',
                view: '21k'),
          ],
        ),
      ),
    );
  }
}
