import 'package:flutter/material.dart';
import 'package:slashcom/pages/inorganic_cat_page.dart';
import 'package:slashcom/pages/organic_cat_page.dart';
import 'package:slashcom/theme/app_text_style.dart';

class OrganicCard extends StatefulWidget {
  const OrganicCard({super.key});

  @override
  State<OrganicCard> createState() => _OrganicCardState();
}

class _OrganicCardState extends State<OrganicCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>OrganicPage()));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        width: 170,
        height: 90,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/organic_cat.png'))
        ),
        child: Align(child: Text('Organic', style: AppTextStyle.appMediumTextStyle(Colors.white, 18)), alignment: Alignment.bottomCenter,),
      ),
    );
  }
}

class InorganicCard extends StatefulWidget {
  const InorganicCard({super.key});

  @override
  State<InorganicCard> createState() => _InorganicCardState();
}

class _InorganicCardState extends State<InorganicCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>InorganicPage()));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        width: 170,
        height: 90,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/inorganic_car.png'))
        ),
        child: Align(child: Text('Inorganic', style: AppTextStyle.appMediumTextStyle(Colors.white, 18)), alignment: Alignment.bottomCenter,),
      ),
    );
  }
}

