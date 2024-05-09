import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parent_child_checkbox/parent_child_checkbox.dart';
import 'package:slashcom/pages/payment_page.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';
import 'component/stepper.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool? checked = false;
  bool? checked1 = false;
  bool? checked2 = false;
  bool? checked3 = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    setState(() {
      _counter++;
    });
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Cart'),
          titleTextStyle:
              AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.all(18),
              children: [
                Text('Your cart',
                    style:
                    AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16)),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: checked,
                        onChanged: (newBool) {
                          setState(() {
                            checked = newBool!;
                          });
                        }),
                    Text(
                      'Check All Products',
                      style:
                      AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14),
                    )
                  ],
                ),
                SizedBox(height: 12),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        color: AppColors.productCardBackgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset('assets/dry_leaves.png', height: 60),
                        SizedBox(width: 4),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Dry Leaves',
                                style: AppTextStyle.appMediumTextStyle(
                                    AppColors.blackColor, 14)),
                            CustomStepper(
                              lowerLimit: 0,
                              upperLimit: 20,
                              stepValue: 1,
                              iconSize: 16.0,
                              value: 0,
                            ),
                            Text('Rp36000',
                                style: AppTextStyle.appRegulerTextStyle(
                                    AppColors.blackColor, 14))
                          ],
                        ),
                        Checkbox(
                            value: checked1,
                            onChanged: (newBool1) {
                              setState(() {
                                checked1 = newBool1!;
                              });
                            })
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        color: AppColors.productCardBackgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset('assets/glass_waste.png', height: 60),
                        SizedBox(width: 4),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Dry Leaves',
                                style: AppTextStyle.appMediumTextStyle(
                                    AppColors.blackColor, 14)),
                            CustomStepper(
                              lowerLimit: 0,
                              upperLimit: 20,
                              stepValue: 1,
                              iconSize: 16.0,
                              value: 0,
                            ),
                            Text('Rp30000',
                                style: AppTextStyle.appRegulerTextStyle(
                                    AppColors.blackColor, 14))
                          ],
                        ),
                        Checkbox(
                            value: checked2,
                            onChanged: (newBool2) {
                              setState(() {
                                checked2 = newBool2;
                              });
                            })
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                        color: AppColors.productCardBackgroundColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                      children: [
                        Image.asset('assets/newspaper_waste.png', height: 60),
                        SizedBox(width: 4),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              child: Text('Newspaper Waste',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14), overflow: TextOverflow.ellipsis),
                            ),
                            CustomStepper(
                              lowerLimit: 0,
                              upperLimit: 20,
                              stepValue: 1,
                              iconSize: 16.0,
                              value: 0,
                            ),
                            Text('Rp12000',
                                style: AppTextStyle.appRegulerTextStyle(
                                    AppColors.blackColor, 14))
                          ],
                        ),
                        Expanded(child: Checkbox(
                            value: checked3,
                            onChanged: (newBool3) {
                              setState(() {
                                checked3 = newBool3;
                              });
                            })),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
              },
              child: Container(
                margin: EdgeInsets.only(bottom: 20, right: 18, left: 18),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('18000', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16)),
                    Container(
                      child: Row(
                        children: [
                          Text('Checkout', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16)),
                          SizedBox(width: 4),
                          Image.asset('assets/icons/arrow-right.png', width: 20)
                        ],
                      ),
                    )
                  ],
                ),
              ),
                        ),
            )],
        ),
      ),
    );
  }
}
