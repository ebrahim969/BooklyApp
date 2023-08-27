import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/utils/constants.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kPrimaryColor),
      home:const HomeView()
    );
}
}