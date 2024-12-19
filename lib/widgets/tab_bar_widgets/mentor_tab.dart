import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qabilforums/Views/login_signup_screens/registar_screen.dart';
import 'package:qabilforums/controllers/chek_box_controller.dart';
import 'package:qabilforums/constants/app_text_style.dart';
import 'package:qabilforums/constants/custom_button.dart';
import 'package:qabilforums/constants/custom_textfield.dart';
import 'package:qabilforums/constants/qabil_app_colors.dart';

class MentorTab extends StatelessWidget {
  final TextEditingController mentorIDController = TextEditingController();
  final TextEditingController mentorPasswordController =
      TextEditingController();

  MentorTab({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          // Mentor Phone Section
          const CustomText(
            text: 'Phone No',
            color: QabilAppColors.textColor,
            fontSize: 20.63,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 15),
          CustomTextField(
            hintText: '125',
            labelText: '0XX',
            controller: mentorIDController,
          ),
          const SizedBox(height: 35),
          const CustomText(
            text: 'Password',
            color: QabilAppColors.textColor,
            fontSize: 20.63,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            hintText: 'Enter Id',
            labelText: '125',
            controller: mentorPasswordController,
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {},
              child: const CustomText(
                text: 'Forget Password?',
                color: QabilAppColors.textColorGrey,
                fontSize: 15.37,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          // Checkbox Section
          Consumer<ChekBoxController>(
            builder: (context, authProvider, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: screenWidth < 360 ? 1.2 : 1.5,
                    child: Checkbox(
                      tristate: true,
                      splashRadius: 24,
                      value: authProvider.isCheked,
                      activeColor: QabilAppColors.textColor,
                      onChanged: (bool? value) {
                        authProvider.checkBox(value ?? false);
                      },
                    ),
                  ),
                  const CustomText(
                    text: 'Keep me signed in',
                    color: QabilAppColors.blackTextClr,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 20),
          CustomButton(
            title: 'Log in',
            onPressed: () {},
          ),
          const SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don’t have an Account? ',
                  style: TextStyle(
                    color: QabilAppColors.textColorGrey,
                    fontSize: 19.71,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistarScreen()),
                    );
                    print('Register tapped');
                  },
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      color: QabilAppColors.textColor,
                      fontSize: 16.71,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
