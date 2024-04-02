import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/views/core/theme/color_theme.dart';
import 'package:hogr/views/tab_one_inner_page/page_3/controller.dart';

class TabTwoPageThree extends StatelessWidget {
  TabTwoPageThree({super.key});
  final Page3TabController tabBarController = Get.put(Page3TabController());
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
              "PAGE 3",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )),
      body: ListView.builder(
        itemCount: tabBarController.products['page3']!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: MediaQuery.sizeOf(context).height / 18,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: teal,
                  border: Border.all(
                    width: 0.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 47, 44, 44)
                          .withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: const Offset(2, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    tabBarController.products['page3']![index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )),
          );
        },
      ),
      // bottomNavigationBar: Container(
      //   decoration: const BoxDecoration(),
      //   child: TabBar(
      //     // tabAlignment: TabAlignment.start,
      //     controller: tabBarController.tabController,
      //     indicatorColor: Colors.transparent,
      //     labelColor: Colors.white,
      //     unselectedLabelColor: Colors.grey,
      //     // isScrollable: true,
      //     labelPadding: const EdgeInsets.fromLTRB(1, 0, 3, 0),
      //     tabs: [
      //       tabWidget(
      //           label: "Tab 1",
      //           tabBarController: tabBarController,
      //           context: context),
      //       tabWidget(
      //           label: "Tab 2",
      //           tabBarController: tabBarController,
      //           context: context),
      //       tabWidget(
      //           label: "Tab 3",
      //           tabBarController: tabBarController,
      //           context: context),
      //     ],
      //   ),
      // ),
    );
  }

  Widget tabWidget({
    required String label,
    required Page3TabController tabBarController,
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
