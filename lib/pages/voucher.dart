import 'package:flutter/material.dart';
import 'package:slashcom/pages/component/sale_button.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class VoucherPage extends StatefulWidget {
  const VoucherPage({Key? key}) : super(key: key);

  @override
  State<VoucherPage> createState() => _VoucherPageState();
}

class _VoucherPageState extends State<VoucherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgrounColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Sale'),
          titleTextStyle:
              AppTextStyle.appMediumTextStyle(AppColors.titleTextColor, 18),
          elevation: 0,
          backgroundColor: AppColors.backgrounColor),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(18),
          children: [
            VoucherButton(
                title: 'Sale 12%', desc: 'terms and conditions apply'),
            VoucherButton(
                title: 'Sale 40%', desc: 'terms and conditions apply'),
            VoucherButton(
                title: 'Sale 50%', desc: 'terms and conditions apply'),
            VoucherButton(
                title: 'Sale 20%', desc: 'terms and conditions apply'),
          ],
        ),
      ),
    );
  }
}
