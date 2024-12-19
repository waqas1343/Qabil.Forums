import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qabilforums/Auth/loginScreens.dart';
import 'package:qabilforums/controllers/splash_screen_controller.dart';
import 'package:qabilforums/constants/qabil_app_colors.dart';
import 'package:qabilforums/constants/qabil_app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final splashProvider =
        Provider.of<Splashscreencontroller>(context, listen: false);

    Future.microtask(() => splashProvider.appLoading().then((_) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const Loginscreens()),
          );
        }));

    return Scaffold(
      backgroundColor: QabilAppColors.appBackground,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(QabilAppImages.splashScreenLogo),
          ),
          const SizedBox(
            height: 10,
          ),
          const CircularProgressIndicator(
            color: QabilAppColors.indicatorColor,
          )
        ],
      ),
    );
  }
}
