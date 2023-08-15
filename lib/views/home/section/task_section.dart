import 'package:antara/app/controllers/activity_controller.dart';
import 'package:antara/models/activity_model.dart';
import 'package:antara/views/activity/main/add_activity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskSection extends StatelessWidget {

  TaskSection({super.key});

  final ActivityController controllerActivity = Get.put(ActivityController());


  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 300,
      width: width,
      child: ListView.builder(
        itemCount: controllerActivity.listActivity.length,
        itemBuilder: (context, index){
          final activity = controllerActivity.listActivity[index];
          return InkWell(
            onTap: (){},
            child: listItem(activity),
          );
        },
      ),
    );

  }

  Widget listItem(activity){
    return Card(
      margin: const EdgeInsets.all(5.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: const Color(0xFFE61A4F) ,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    '${activity.timeStart} - ${activity.timeStop}',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Poppins'
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    activity.activity,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ) ,
    );
  }
}