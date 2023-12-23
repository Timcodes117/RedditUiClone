// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons/heroicons.dart';
import 'package:redditclone/assets/screens/comments.dart';
import 'package:redditclone/assets/screens/home.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';

 

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

int _selectedTab = 0;

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final List _screens = [
    Home(),
    Comments(),
    Home(),
    Comments(),
  ];

  void _onChange(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        body: _screens[_selectedTab],
        bottomNavigationBar: CustomBNavBar(
          changeBar: (index) => _onChange(index),
        ),
      
    );
  }
}

class CustomBNavBar extends StatelessWidget {
  final Function(int index) changeBar;

  CustomBNavBar({super.key, required this.changeBar});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: BottomAppBar(
        elevation: 0,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BarCon(
                    name: "Home",
                    icon: HeroiconsOutline.home,
                    barIndex: 0,
                    press: (index) {
                      changeBar(index);
                    },
                  ),
                  BarCon(
                    name: "Discover",
                    icon: HeroiconsOutline.globeAlt,
                    barIndex: 1,
                    press: (index) {
                      changeBar(index);
                    },
                  ),
                  BarCon(
                    name: "Cart",
                    icon: HeroiconsOutline.chatBubbleOvalLeft,
                    barIndex: 2,
                    press: (index) {
                      changeBar(index);
                    },
                  ),
                  BarCon(
                    name: "Account",
                    icon: HeroiconsOutline.wallet,
                    barIndex: 3,
                    press: (index) {
                      changeBar(index);
                    },
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

class BarCon extends StatelessWidget {
  // const BarCon({super.key});
  final name, icon, barIndex;

  final Function(int index) press;

  BarCon(
      {required this.name,
      required this.icon,
      required this.barIndex,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press(barIndex);
      },
      child: Container(
        height: 60,
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: _selectedTab == barIndex
                  ? Color(0xFFFF4500)
                  : Colors.grey.shade500,
              size: 30,
            ),
            Container(
              margin: EdgeInsets.only(top: 1),
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                color: _selectedTab == barIndex ? Color(0xFFFF4500) : Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),
            )
          ],
        ),
      ),
    );
  }
}
