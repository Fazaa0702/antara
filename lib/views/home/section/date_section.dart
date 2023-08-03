import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateSection extends StatelessWidget {
  const DateSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
      ),
      child: DatePicker(
        DateTime.now().subtract(
          const Duration(
            days: 30,
          ),
        ),
        dateTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600
        ),
        monthTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w600,
        ),
        dayTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        initialSelectedDate: DateTime.now(),
        selectedTextColor: Colors.white,
        selectionColor: Color(0xFFE61A4F),
        deactivatedColor: Colors.white60,
        locale: "id_ID",
        daysCount: 31,
      ),
    ) ;
  }
}
