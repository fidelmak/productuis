import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:productuis/responso/responso.dart';
import './productUis/constants.dart';
import 'freeres/courses_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Product UIs',
            theme: ThemeData(
              // backgroundColor: const Color.fromARGB(255, 43, 41, 41),
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: CoursesPage() // HomePage() //product_one() // //,
            );
      },
    );
  }
}
