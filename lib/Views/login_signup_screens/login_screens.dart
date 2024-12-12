import 'package:flutter/material.dart';
import 'package:qabilforums/widgets/constants/app_text_style.dart';
import 'package:qabilforums/widgets/constants/qabil_app_colors.dart';
import 'package:qabilforums/widgets/custom_tabbar_widget.dart';

class LoginScreens extends StatelessWidget {
  const LoginScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CustomText(
                text: 'Login',
                color: QabilAppColors.textColor,
                fontSize: 33.5,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(height: 10),
              CustomText(
                text: 'Welcome Back To the app',
                color: QabilAppColors.textColorWelcome,
                fontSize: 20.63,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(height: 20),
              Container(
                height: 30,
                width: 200,
                child: CustomTabBar(),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('Login Screen Content')),
                    Center(child: Text('Register Screen Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
