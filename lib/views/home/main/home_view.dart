import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/section/home_section.dart';
import '../../activity/main/add_activity.dart';
import '../../../models/activity_model.dart';



class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int selectedIndex = 0;

  final List<Widget> _list = [
    HomeScreen(),
    AddActivity(),
    HomeScreen(),
  ];

  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Image.asset(
            'assets/images/logo.png',
            height: 38,
          ),
        ),
        body: _list[selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          onTap: _onItemTapped,
          style: TabStyle.fixedCircle,
          backgroundColor: const Color(0xFFE61A4F),
          items: const[
            TabItem(icon: Icons.home, title: 'beranda'),
            TabItem(icon: Icons.add, title: 'Tambah Aktivitas'),
            TabItem(icon: Icons.account_circle_rounded, title: 'Profil'),
          ],
          ),
        ),
    );
  }
}


