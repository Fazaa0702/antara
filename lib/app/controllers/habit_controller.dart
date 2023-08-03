import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HabitController extends GetxController{

  RxInt counter = 0.obs;

  void onItemTapped(){
    if(counter<9){
      counter.value++;
    }
    else{

    }
  }
}