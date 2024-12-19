import 'package:flutter/material.dart';
import 'package:qabilforums/constants/qabil_app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;

  const CustomButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = QabilAppColors.textColor,
    this.textColor = Colors.white,
    this.borderRadius = 9.36,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.14,
      width: double.infinity, // Full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: QabilAppColors.appBackground,
            fontSize: 19.71,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center, // Center the text
        ),
      ),
    );
  }
}
