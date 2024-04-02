import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/views/core/theme/color_theme.dart';
import 'package:hogr/views/home/componects/tab_bar_1.dart';
import 'package:hogr/views/home/componects/tab_bar_2.dart';
import 'package:hogr/views/home/componects/tab_bar_3.dart';
import 'package:hogr/views/home/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TabBarController tabBarController = Get.put(TabBarController());

    return Scaffold(
      body: TabBarView(
        controller: tabBarController.tabController,
        children: [
          const TabBarPage1(),
          const TabBarPage2(),
          TabBarPage3(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(),
        child: TabBar(
          // tabAlignment: TabAlignment.start,
          controller: tabBarController.tabController,
          indicatorColor: Colors.transparent,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          // isScrollable: true,
          labelPadding: const EdgeInsets.fromLTRB(1, 0, 3, 0),
          tabs: [
            tabWidget(
                label: "Tab 1",
                tabBarController: tabBarController,
                context: context),
            tabWidget(
                label: "Tab 2",
                tabBarController: tabBarController,
                context: context),
            tabWidget(
                label: "Tab 3",
                tabBarController: tabBarController,
                context: context),
          ],
        ),
      ),
    );
  }

  Widget tabWidget({
    required String label,
    required TabBarController tabBarController,
    required BuildContext context,
  }) {
    return Tab(
      child: Obx(
        () => GestureDetector(
          onTap: () {
            tabBarController.changeTabColor(label);
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            color: tabBarController.seletedTab.value == label
                ? Colors.black
                : cards,
            alignment: Alignment.center,
            child: Text(
              label,
              style: TextStyle(
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
