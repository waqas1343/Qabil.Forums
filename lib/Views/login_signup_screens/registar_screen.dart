import 'package:flutter/material.dart';
import 'package:qabilforums/constants/app_text_style.dart';
import 'package:qabilforums/constants/qabil_app_colors.dart';
import 'package:qabilforums/widgets/tab_bar_widgets/tab_bars_widget.dart';

class RegistarScreen extends StatelessWidget {
  const RegistarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: QabilAppColors.appBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),
              CustomText(
                text: 'Register',
                color: QabilAppColors.textColor,
                fontSize: screenWidth * 0.08,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: screenHeight * 0.01),
              CustomText(
                text: 'Welcome Back To the app',
                color: QabilAppColors.textColorGrey,
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: screenHeight * 0.03),
              const Expanded(child: TabBarsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
