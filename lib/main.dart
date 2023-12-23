// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heroicons/heroicons.dart';
import 'package:redditclone/App.dart';
import 'package:redditclone/assets/screens/comments.dart';
import 'package:redditclone/assets/screens/home.dart';
import 'package:heroicons_flutter/heroicons_flutter.dart';
import 'package:heroicons_flutter/heroicons_list.dart';
import 'package:flutter/services.dart';

void main() {
     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.white,
    statusBarBrightness: Brightness.light,
    // statusBarIconBrightness: Brightness.dark,    
  ));
  runApp(     
       const Mainapp(),   
  );
}

class Mainapp extends StatefulWidget {
  const Mainapp({super.key});

  @override
  State<Mainapp> createState() => _MainappState();
}

class _MainappState extends State<Mainapp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter reddit Ui clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      
      debugShowCheckedModeBanner: false,
   
      routes: {
        "/" : (context)=> MyApp(),
        "/comments" : (context) => Comments(),
         
      },
    );
  }
}
 