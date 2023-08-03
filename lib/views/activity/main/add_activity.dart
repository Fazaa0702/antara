import 'package:antara/models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../section/title_activity_section.dart';
import '../section/time_start_section.dart';
import '../section/time_stop_section.dart';
import '../section/button_add_section.dart';



class AddActivity extends StatelessWidget {
  const AddActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Container(
          color: Color(0xFFF8F8F8),
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleActivitySection(),
                const SizedBox(
                  height: 20,
                ),
                TimeStartSection(),
                const SizedBox(
                  height: 20,
                ),
                TimeStopSection(),
                ButtonAddSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
