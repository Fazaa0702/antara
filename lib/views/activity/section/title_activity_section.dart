import 'package:antara/app/controllers/activity_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:antara/models/activity_model.dart';
import '../main/add_activity.dart';


class TitleActivitySection extends StatelessWidget {
  TitleActivitySection({super.key});

  final controllerActivity = Get.put(ActivityController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text(
          "Nama Aktivitas",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        TextFormField(
          controller: controllerActivity.controllerNameActivity,
          textAlignVertical: TextAlignVertical.center,
          onChanged: (value)=> controllerActivity.name = value,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
          decoration: const InputDecoration(
            hintText: 'Nama Aktivitas',
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFC92B50),
                width: 3.0,
              )
            ),
            // focusedBorder: OutlineInputBorder(
            //   borderSide: BorderSide(
            //       color: Color(0xFFE61A4F),
            //       width: 2.0
            //   ),
            // ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            )
          ),
        )
      ],
    );
  }
}
