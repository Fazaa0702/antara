import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_section.dart';
import 'today_title_section.dart';
import 'task_title_section.dart';
import 'task_section.dart';
import 'habit_title_section.dart';
import 'habit_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});


  double width = Get.width;
  double height = Get.height;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFF8F8F8),
          padding: const EdgeInsets.only(
            bottom: 30,
            right: 20,
            left: 20,
          ),
          child: Column(
            children: [
              const TodayTitleSection(),
              DateSection(),
              const TaskTitleSection(),
              TaskSection(),
              const HabitTitleSection(),
              HabitSection(),
            ],
          ),
        ),
      ),
    );
  }
}