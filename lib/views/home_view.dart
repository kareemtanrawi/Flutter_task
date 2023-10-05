import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/constants.dart';
import 'package:flutter_task/views/first_view.dart';
import 'package:flutter_task/views/second_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  List views = [
    const FirstView(),
    const SecondView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:views[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: primaryColor,
        iconSize: 28,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more),
            label: 'More',
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}
