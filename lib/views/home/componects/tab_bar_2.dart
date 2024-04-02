import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/views/core/theme/color_theme.dart';
import 'package:hogr/views/tab_two_inner.dart/tab_two_pg_three.dart';

class TabBarPage2 extends StatelessWidget {
  const TabBarPage2({super.key});

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
              "PAGE 1",
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
                Get.to(
                  () => TabTwoPageThree(),
                  fullscreenDialog: true,
                );
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
    );
  }
}
