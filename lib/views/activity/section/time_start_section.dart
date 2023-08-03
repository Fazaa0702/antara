import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

import 'package:antara/models/activity_model.dart';

class TimeStartSection extends StatelessWidget {
  const TimeStartSection({super.key});


  @override

  Widget build(BuildContext context) {

    Time timenow =
    Time(hour: DateTime.now().hour, minute: DateTime.now().minute);
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: const Text(
            "Waktu Mulai",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  readOnly: true,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Waktu Mulai",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFE61A4F)),
                    ),
                    filled: true,
                    fillColor: Color(0xFFDDD6D6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  showPicker(
                    is24HrFormat: true,
                    value: timenow,
                    onChange: (value) {
                    },
                  ),
                );
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFE61A4F),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: const Text(
                  "Atur Waktu",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
