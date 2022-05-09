import 'package:crud_getxcli/app/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class OutlinedGradientButton extends StatelessWidget {
  const OutlinedGradientButton({
    Key? key,
    this.backgroundColor = Colors.white,
    this.borderRadiusValue = 40.0,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.innerWidget,
  }) : super(key: key);
  final Widget innerWidget;
  final Color backgroundColor;
  final double buttonWidth;
  final double buttonHeight;
  final double borderRadiusValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Linear Gradient Border
          Container(
            width: buttonWidth,
            height: buttonHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.primaryColor1,
                  AppColor.primaryColor2,
                ],
              ),
              borderRadius: BorderRadius.circular(
                borderRadiusValue,
              ),
            ),
            child: Container(
              width: buttonWidth - 6,
              height: buttonHeight - 5,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadiusValue),
              ),
              alignment: Alignment.center,
              child: innerWidget,
            ),
          ),
        ],
      ),
    );
  }
}
