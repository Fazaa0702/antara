import 'package:antara/app/controllers/habit_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:skeletons/skeletons.dart';



class HabitSection extends StatelessWidget {
  HabitSection({Key? key}) : super(key: key);
  final HabitController _controller = Get.put(HabitController());

  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // mainAxisSpacing: 10,
          // crossAxisSpacing: 10,
          childAspectRatio: 2,
          crossAxisCount: 2,
        ),
        children: [
          GestureDetector(
            onTap: ()=>_controller.onItemMinumTapped(),
            child: Card(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                _controller.minumCounter.toString(),
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'
                                ),
                              )
                              ),
                              Container(
                                height: 3,
                                width: 30,
                                color: Colors.white,
                              ),
                              Text(
                                '8',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ) ,
          ),
          GestureDetector(
            onTap: ()=>_controller.onItemTidurTapped(),
            child: Card(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                _controller.tidurCounter.toString(),
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'
                                ),
                              )
                              ),
                              Container(
                                height: 3,
                                width: 30,
                                color: Colors.white,
                              ),
                              Text(
                                '1',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ) ,
          ),
          GestureDetector(
            onTap: ()=>_controller.onItemMakanTapped(),
            child: Card(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                _controller.makanCounter.toString(),
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'
                                ),
                              )
                              ),
                              Container(
                                height: 3,
                                width: 30,
                                color: Colors.white,
                              ),
                              Text(
                                '3',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ) ,
          ),
          GestureDetector(
            onTap: ()=>_controller.onItemOlahragaTapped(),
            child: Card(
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 30,
                            color: Colors.white,
                          ),
                          Container(
                            height: 60,
                            width: 3,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Obx(() => Text(
                                _controller.olahragaCounter.toString(),
                                style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: 'Poppins'
                                ),
                              )
                              ),
                              Container(
                                height: 3,
                                width: 30,
                                color: Colors.white,
                              ),
                              Text(
                                '1',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ) ,
            ) ,
          ),
        ]);
  }
}

