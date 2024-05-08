import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:slashcom/theme/app_color.dart';

import '../bottom_navbar.dart';
import '../theme/app_text_style.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      // imageAlignment: Alignment.center,
        contentMargin: EdgeInsets.only(left: 30, right: 30),
        titlePadding: EdgeInsets.only(top: 38),
        imagePadding: EdgeInsets.only(top: 23),
        titleTextStyle: AppTextStyle.appSemiBoldTextStyle(AppColors.titleTextColor, 40),
        bodyTextStyle: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 14),
        bodyPadding: EdgeInsets.only(
          top: 18,
        ));
    return SafeArea(
      child: IntroductionScreen(
        globalBackgroundColor: AppColors.backgrounColor,
        pages: [
          PageViewModel(
              title: 'Hello!',
              image: Image.asset(
                'assets/welcome1.png',
                width: 244,
              ),
              body:
              "ReTrash is an online market place for selling and buying recycled environmental waste with the purpose of reducing environmental waste around us.",
              decoration: pageDecoration),
          PageViewModel(
              title: 'Welcome!',
              body: "By using ReTrash, you participate in protecting and caring for the surrounding environment. ",
              image: Image.asset(
                'assets/welcome2.png',
                width: 244,
              ),
              decoration: pageDecoration),
          PageViewModel(
              title: 'Let\'s! Start',
              body:
              "Ready to make a difference? Sign in now and start recycling!",
              image: Image.asset(
                'assets/welcome3.png',
                width: 244,
              ),
              decoration: pageDecoration)
        ],
        onChange: (value) {
          indexPage = value;
        },
        onDone: () {},
        showSkipButton: true,
        showNextButton: true,
        showDoneButton: true,
        showBackButton: false,
        skip: Text(
          'Skip',
          style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16),
        ),
        next: Text(
          'Next',
          style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16),
        ),
        done: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BottomNavbar()));
          },
          child: Text(
            'Let\'s start',
            style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16),
          ),
        ),
        dotsDecorator: DotsDecorator(
            activeColor: AppColors.yellowColor,
            size: const Size(14, 14),
            color: AppColors.greyColor,
            activeSize: const Size(14, 14),
            activeShape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25)))),
      ),
    );
  }
}
