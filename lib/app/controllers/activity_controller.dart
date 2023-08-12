import 'package:antara/models/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController{
  var controllerNameActivity = TextEditingController();
  var controllerTimeStart = TextEditingController();
  var controllerTimeStop = TextEditingController();

  var name = 'No Value';
  var startTime = 'No Value';
  var stopTime = 'No Value';

  ActivityModel getActivity(){
    return ActivityModel(
        timeStart: controllerTimeStart.text,
        timeStop: controllerTimeStop.text,
        activity: controllerNameActivity.text,
    );
  }

  void saveActivity(){
    ActivityModel activityModel = getActivity();
  }

}