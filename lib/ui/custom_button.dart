import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key key,
      this.child,
      this.color,
      this.borderRadius,
      this.height,
      this.onPressed,
      this.borderWidth,
      this.borderColor,
      this.horizontalPadding,
      this.verticalPadding})
      : super(key: key);
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;
  final double borderWidth;
  final Color borderColor;
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding),
          primary: color,
          side: BorderSide(width: borderWidth, color: borderColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
