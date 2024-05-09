import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';

class DetailProducts extends StatefulWidget {
  const DetailProducts({super.key});

  @override
  State<DetailProducts> createState() => _DetailProductsState();
}

class _DetailProductsState extends State<DetailProducts> {
  late PageController _pageController;

  List<String> images = [
    'assets/plastic_bottle.png',
    'assets/plastic_bottle.png',
    'assets/plastic_bottle.png',
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
                      shape: MaterialStateProperty.all(LinearBorder.none),
                      backgroundColor: MaterialStateProperty.all(AppColors.yellowColor),
                      elevation: MaterialStateProperty.all(0),
                      side: MaterialStateProperty.all(BorderSide.none),
                      alignment: Alignment.bottomCenter
                  ),
                  onPressed: (){}, child: Container(
                height: 45,
                child: Column(
                  children: [
                    Image.asset('assets/icons/chat.png', width: 24,),
                    Text('Ask Seller', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12))
                  ],
                ),
              )),
            ),
            Expanded(
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
                      shape: MaterialStateProperty.all(LinearBorder.none),
                      backgroundColor: MaterialStateProperty.all(AppColors.yellowColor),
                      elevation: MaterialStateProperty.all(0),
                      side: MaterialStateProperty.all(BorderSide.none),
                      alignment: Alignment.bottomCenter
                  ),
                  onPressed: (){}, child: Container(
                height: 45,
                child: Column(
                  children: [
                    Image.asset('assets/icons/shopping-cart.png', width: 24,),
                    Text('Add to cart', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12))
                  ],
                ),
              )),
            ),
            Expanded(
              child: ElevatedButton(
                  clipBehavior: Clip.hardEdge,
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10, horizontal: 24)),
                      shape: MaterialStateProperty.all(LinearBorder.none),
                      backgroundColor: MaterialStateProperty.all(AppColors.yellowColor),
                      elevation: MaterialStateProperty.all(0),
                      side: MaterialStateProperty.all(BorderSide.none),
                      alignment: Alignment.bottomCenter
                  ),
                  onPressed: (){}, child: Container(
                height: 45,
                child: Column(
                  children: [
                    Text('Checkout Now', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text('Detail Products'),
          titleTextStyle:
          AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 145,
                    child: PageView.builder(
                        itemCount: images.length,
                        pageSnapping: true,
                        controller: _pageController,
                        onPageChanged: (page) {
                          setState(() {
                            activePage = page;
                          });
                        },
                        itemBuilder: (context, pagePosition) {
                          bool active = pagePosition == activePage;
                          return slider(images, pagePosition, active);
                        }),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: indicators(images.length, activePage))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Plastic Bottle', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16)),
                  SizedBox(height: 8),
                  Text('Rp4000', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                  SizedBox(height: 20),
                  Container(
                    height: 20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(MingCute.heart_line, size: 16),
                              SizedBox(width: 4),
                              Text('156', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12))
                            ],
                          ),
                        ),
                        SizedBox(width: 8),
                        VerticalDivider(color: AppColors.greyColor, thickness: 2, width: 10,),
                        SizedBox(width: 8),
                        Container(
                          child: Text('10k Terjual', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ),
            Divider(
              color: AppColors.greyColor,
              thickness: 4,
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Image.asset('assets/pp.png', width: 54),
                        SizedBox(width: 14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Karina Shop', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14)),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(MingCute.map_pin_line, size: 14),
                                SizedBox(width: 6),
                                Text('Tangerang Selatan', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 14))
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Image.asset('assets/icons/chevron-right.png', width: 30,)
                ],
              ),
            ),
            SizedBox(height: 24),
            Divider(
              color: AppColors.greyColor,
              thickness: 4,
            ),
            SizedBox(height: 24),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Description', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16)),
                    SizedBox(height: 8),
                    Text('Used plastic bottles should be collected and stored in designated bins to recycled. This helps reduce waste and conserves resources.', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 14))
                  ],
                )),
          ],
        ),
      ),
    );
  }

  AnimatedContainer slider(images, pagePosition, active) {
    double margin = active ? 2 : 12;

    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(images[pagePosition]))),
    );
  }

  imageAnimation(PageController animation, images, pagePosition) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, widget) {
        print(pagePosition);

        return SizedBox(
          width: 200,
          height: 200,
          child: widget,
        );
      },
      child: Container(
        // margin: EdgeInsets.all(10),
        child: Image.network(images[pagePosition]),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color:
            currentIndex == index ? AppColors.yellowColor : Colors.black26,
            shape: BoxShape.circle),
      );
    });
  }

}
