import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:slashcom/pages/component/button.dart';

import '../theme/app_color.dart';
import '../theme/app_text_style.dart';

class SellPage extends StatefulWidget {
  const SellPage({Key? key}) : super(key: key);

  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  TextEditingController _productTitleController = TextEditingController();
  TextEditingController _productDescController = TextEditingController();
  TextEditingController _productWeightController = TextEditingController();

  final List<String> items = [
    'Organic',
    'Inorganic',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Sell'),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Product Name',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _productTitleController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.buttonColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Product Description',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _productDescController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.buttonColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Categories',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 60,
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.blackColor),
                              borderRadius: BorderRadius.circular(8))),
                      // borderRadius: BorderRadius.circular(8),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: AppTextStyle.appRegulerTextStyle(
                                      AppColors.blackColor, 14),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      isExpanded: true,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Weight (gr)',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  const SizedBox(height: 8),
                  SizedBox(
                    height: 40,
                    child: TextField(
                      controller: _productWeightController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.buttonColor),
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Items',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  SizedBox(height: 8),
                  Wrap(
                    runSpacing: 6,
                    spacing: 6,
                    clipBehavior: Clip.hardEdge,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.blackColor),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('Plastic',
                                style: AppTextStyle.appMediumTextStyle(
                                    AppColors.blackColor, 14)),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Leaf',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Food',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Paper',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Can',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Glass',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 85,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColors.blackColor),
                          ),
                          child: Center(
                              child: Text('Other',
                                  style: AppTextStyle.appMediumTextStyle(
                                      AppColors.blackColor, 14))),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Image',
                      style: AppTextStyle.appMediumTextStyle(
                          AppColors.blackColor, 18)),
                  SizedBox(height: 8),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 115,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(MingCute.camera_2_line, size: 32),
                          Text(
                            'Upload Image',
                            style: AppTextStyle.appMediumTextStyle(
                                AppColors.blackColor, 16),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Success!'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Text(
                                'Your product has successfully added to your store!'),
                          ],
                        ),
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('Done', style: AppTextStyle.appMediumTextStyle(AppColors.yellowColor, 14),),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(8)),
              child: Center(
                  child: Text(
                'Sell Product',
                style: AppTextStyle.appSemiBoldTextStyle(
                    AppColors.blackColor, 16),
              )),
            ),
                          )
                        ])
          ],
        ),
      ),
    );
  }
}
