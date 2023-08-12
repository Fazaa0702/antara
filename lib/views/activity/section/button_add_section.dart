import 'package:antara/app/controllers/activity_controller.dart';
import 'package:antara/views/home/section/home_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:antara/models/activity_model.dart';
import 'time_start_section.dart';
import 'time_stop_section.dart';
import 'title_activity_section.dart';

class ButtonAddSection extends StatelessWidget {
  ButtonAddSection({super.key});

  final controllerActivity = Get.put(ActivityController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0xFFE61A4F),
                Color(0xFFC92B50),
              ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: ElevatedButton(
          onPressed: (){Navigator.pop(context,controllerActivity.getActivity());},
          style: ElevatedButton.styleFrom(
            // backgroundColor: MyColors.primaryColor,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Tambah Aktivitas',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
