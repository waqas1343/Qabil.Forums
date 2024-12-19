import 'package:flutter/material.dart';
import 'package:qabilforums/constants/qabil_app_colors.dart';
import 'package:qabilforums/widgets/tab_bar_widgets/mentor_tab.dart';
import 'package:qabilforums/widgets/tab_bar_widgets/student_tab.dart';

class TabBarsWidget extends StatelessWidget {
  const TabBarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: QabilAppColors.appBackground,
        body: Column(
          children: [
            TabBar(
              dividerColor: Colors.transparent,
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: const BorderSide(
                  width: 3,
                  color: QabilAppColors.textColor,
                ),
                insets: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              ),
              tabs: const [
                Tab(text: 'Student'),
                Tab(text: 'Mentor'),
              ],
              labelColor: QabilAppColors.textColor,
              unselectedLabelColor: QabilAppColors.textColorGrey,
              labelStyle: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                letterSpacing: 1.2,
              ),
              unselectedLabelStyle: TextStyle(
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  StudentTab(),
                  MentorTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
