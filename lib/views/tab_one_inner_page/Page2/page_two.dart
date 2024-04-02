import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/views/core/theme/color_theme.dart';
import 'package:hogr/views/tab_one_inner_page/Page2/controller.dart';
import 'package:hogr/views/tab_one_inner_page/page_3/page_three.dart';

class PageTwo extends StatelessWidget {
  PageTwo({super.key});
  final InnerTabController tabBarController = Get.put(InnerTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: surface,
            centerTitle: true,
            foregroundColor: textColor,
            title: const Text(
              "PAGE 2",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
      body: Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.3,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: textColor,
                side: const BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                ),
                shadowColor: textColorI,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              onPressed: () {
                Get.to(() => PageThree());
              },
              child: const Text(
                "Page 3",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              )),
        ),
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
    required InnerTabController tabBarController,
    required BuildContext context,
  }) {
    return Tab(
      child: Obx(
        () => GestureDetector(
          onTap: () => tabBarController.changeTabColor(label),
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
