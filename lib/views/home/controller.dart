import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TabBarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TabController tabController;
  var selectedIndex = 0.obs;
  var seletedTab = "Tab 1".obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 3, initialIndex: 0, vsync: this);
    ever(selectedIndex, (_) => tabController.animateTo(selectedIndex.value));
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }

  void changeTab(int index) {
    selectedIndex.value = index;
  }

  changeTabColor(String tab) {
    selectedIndex.value = ['Tab 1', 'Tab 2', 'Tab 3'].indexOf(tab);

    seletedTab.value = tab;
  }
}
