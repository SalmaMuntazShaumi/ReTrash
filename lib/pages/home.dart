import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slashcom/pages/component/categories_card.dart';
import 'package:slashcom/pages/component/product_card.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;

  List<String> images = [
    'assets/highlighted_news.png',
    'assets/highlighted_news.png',
    'assets/highlighted_news.png',
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
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            children: [
              Container(
                height: 45,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/logo_kecil.png',
                        width: 116, height: 30),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/user_bg.png',
                              width: 40, height: 40),
                        ),
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset('assets/icons/bell.png',
                              width: 24, height: 24),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('News',
                        style: AppTextStyle.appMediumTextStyle(
                            AppColors.titleTextColor, 18)),
                    // SizedBox(height: 8),
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
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
                  height: 68,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.yellowColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Row(
                            children: [
                              Image.asset('assets/cart.png', width: 40),
                              SizedBox(width: 8),
                              Container(
                                  width: 123,
                                  child: Text('Sell your waste here!',
                                      style: AppTextStyle.appMediumTextStyle(
                                          AppColors.blackColor, 18),
                                      overflow: TextOverflow.clip,
                                      maxLines: 2)),
                            ],
                          )),
                      Spacer(),
                      Image.asset('assets/icons/chevron-right.png',
                          width: 32, height: 32)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Products', style: AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18)),
                        Spacer(),
                        GestureDetector(
                          onTap: (){},
                          child: Row(children: [Text('View All', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)), Image.asset('assets/icons/arrow-right.png', height: 15, width: 17)]),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(child: OrganicCard()),
                  SizedBox(width: 10),
                  Expanded(child: InorganicCard()),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                      children: [
                        ProductCard(imgAssets: 'assets/food_waste_product.png', title: 'Food Waste', desc: 'Recycling food waste can reduce waste in landfills.', price: 'Rp5000'),
                        SizedBox(width: 10),
                        ProductCard(imgAssets: 'assets/plastic_bottle.png', title: 'Plastic Bottle', desc: 'Used plastic bottles should be collected for recycling.', price: 'Rp4000'),
                        SizedBox(width: 10),
                        ProductCard(imgAssets: 'assets/food_waste_product.png', title: 'Food Waste', desc: 'Recycling food waste can reduce waste in landfills.', price: 'Rp 5000'),
                        SizedBox(width: 10),
                      ],
                    ),
              ),
            ],
          ),
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
