import 'package:flutter/material.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class AppButton extends StatefulWidget {
  String text, route;
  AppButton({super.key, required this.text, required this.route});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushReplacementNamed(context, widget.route);},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: AppColors.buttonColor, borderRadius: BorderRadius.circular(8)),
        child: Center(child: Text(widget.text!, style: AppTextStyle.appSemiBoldTextStyle(AppColors.blackColor, 18),)),
      ),
    );
  }
}
