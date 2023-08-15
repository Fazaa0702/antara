import 'package:antara/app/controllers/activity_controller.dart';
import 'package:antara/models/activity_model.dart';
import 'package:antara/views/home/main/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



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
          onPressed: (){
            controllerActivity.listActivity.add(
                ActivityModel(
                timeStart: controllerActivity.startTime,
                timeStop: controllerActivity.stopTime,
                activity: controllerActivity.name
                )
            );
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => const HomeView()));
          },
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
