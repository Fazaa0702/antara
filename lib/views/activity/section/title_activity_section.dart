import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:antara/models/activity_model.dart';


class TitleActivitySection extends StatelessWidget {
  const TitleActivitySection({super.key});


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
          textAlignVertical: TextAlignVertical.center,
          onChanged: (value){},
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
