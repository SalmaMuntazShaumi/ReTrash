import 'package:flutter/material.dart';
import 'package:slashcom/theme/app_color.dart';
import 'package:slashcom/theme/app_text_style.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPress, required this.iconSize});

  final IconData icon;
  final VoidCallback onPress;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints.tightFor(width: 20, height: 20),
      elevation: 0,
      onPressed: onPress,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      fillColor: AppColors.greyColor,
      child: Icon(
        icon,
        color: Colors.black,
        size: 16,
      ),
    );
  }
}

class CustomStepper extends StatefulWidget {
  CustomStepper({
    required this.lowerLimit,
    required this.upperLimit,
    required this.stepValue,
    required this.iconSize,
    required this.value,
  });

  final int lowerLimit;
  final int upperLimit;
  final int stepValue;
  final double iconSize;
  int value;

  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RoundedIconButton(
            icon: Icons.remove,
            iconSize: widget.iconSize,
            onPress: () {
              setState(() {
                widget.value =
                widget.value == widget.lowerLimit ? widget.lowerLimit : widget.value -= widget.stepValue;
              });
            },
          ),
          Container(
            width: 10,
            child: Text(
              '${widget.value}',
              style: AppTextStyle.appRegulerTextStyle(AppColors.blackColor, 16),
              // textAlign: TextAlign.center,
            ),
          ),
          RoundedIconButton(
            icon: Icons.add,
            iconSize: widget.iconSize,
            onPress: () {
              setState(() {
                widget.value =
                widget.value == widget.upperLimit ? widget.upperLimit : widget.value += widget.stepValue;
              });
            },
          ),
        ],
      ),
    );
  }
}