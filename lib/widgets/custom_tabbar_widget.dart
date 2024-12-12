import 'package:flutter/material.dart';
import 'package:qabilforums/widgets/constants/app_text_style.dart';
import 'package:qabilforums/widgets/constants/qabil_app_colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController tabController = DefaultTabController.of(context);

    return TabBar(
      controller: tabController,
      tabs: const [
        Tab(
          child: CustomText(text: 'Login'),
        ),
        Tab(text: 'Register'),
      ],
      indicatorColor: QabilAppColors.textColor,
      labelColor: QabilAppColors.textColor,
      unselectedLabelColor: Colors.grey,
    );
  }
}
