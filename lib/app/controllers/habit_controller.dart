import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HabitController extends GetxController{

  RxInt olahragaCounter = 0.obs;
  RxInt tidurCounter = 0.obs;
  RxInt makanCounter = 0.obs;
  RxInt minumCounter = 0.obs;


  void onItemOlahragaTapped(){
    if(olahragaCounter < 1){
      olahragaCounter.value++;
    }
    else{

    }
  }

  void onItemTidurTapped() {
    if (tidurCounter < 1) {
      tidurCounter.value++;
    }
    else {

    }
  }

  void onItemMinumTapped() {
    if (minumCounter < 8) {
      minumCounter.value++;
    }
    else {

    }
  }

  void onItemMakanTapped() {
    if (makanCounter < 3) {
      makanCounter.value++;
    }
    else {

    }
  }

  void reset(){
    minumCounter.value = 0;
    makanCounter.value = 0;
    tidurCounter.value = 0;
    olahragaCounter.value = 0;
  }
}