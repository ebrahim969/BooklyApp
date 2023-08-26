import 'package:bookly_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}