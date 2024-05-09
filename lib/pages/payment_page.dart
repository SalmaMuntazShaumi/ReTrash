import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/component/button.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Checkout Details'),
          titleTextStyle:
          AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      backgroundColor: AppColors.backgrounColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: AppColors.productCardBackgroundColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/dry_leaves_square.png', width: 110, height: 100,),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Dry Leaves', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 18)),
                      Text('Total items : 2', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                      Text('Rp35000', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 12)),
                      SizedBox(height: 8),
                      Container(width: 170,child: Text('Dry leaves can be used to create natural compost.', style: AppTextStyle.appRegulerTextStyle(AppColors.greyColor, 12), overflow: TextOverflow.clip,))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 12),
            Align(alignment: Alignment.topLeft,child: GestureDetector(onTap: (){}, child: Text('See All', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14)))),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.yellowColor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(MingCute.user_1_line, size: 14),
                      SizedBox(width: 6),
                      Text('NingNing', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 14))
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(MingCute.map_pin_line, size: 14),
                      SizedBox(width: 6),
                      Text('Cihideung, Bandung', style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 14))
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Payment Method', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 16)),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: AppColors.productCardBackgroundColor,
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/logos/gojek.png', width: 40),
                                SizedBox(width: 16),
                                Text('Gopay', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                              ],
                            ),
                          ),
                          Image.asset('assets/icons/chevron-right.png', width: 24,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: AppColors.productCardBackgroundColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/logos/ovo.png', width: 40),
                                SizedBox(width: 16),
                                Text('OVO', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                              ],
                            ),
                          ),
                          Image.asset('assets/icons/chevron-right.png', width: 24,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: AppColors.productCardBackgroundColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/logos/dana.png', width: 40),
                                SizedBox(width: 16),
                                Text('DANA', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                              ],
                            ),
                          ),
                          Image.asset('assets/icons/chevron-right.png', width: 24,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: AppColors.productCardBackgroundColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/logos/spay.png', width: 40),
                                SizedBox(width: 16),
                                Text('Shopee Pay', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                              ],
                            ),
                          ),
                          Image.asset('assets/icons/chevron-right.png', width: 24,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                          color: AppColors.productCardBackgroundColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Image.asset('assets/logos/va.png', width: 40),
                                SizedBox(width: 16),
                                Text('Virtual Account', style: AppTextStyle.appMediumTextStyle(AppColors.blackColor, 14))
                              ],
                            ),
                          ),
                          Image.asset('assets/icons/chevron-right.png', width: 24,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 90),
            AppButton(text: 'Checkout', route: '/bottomNav')
          ],
        ),
      ),
    );
  }
}
