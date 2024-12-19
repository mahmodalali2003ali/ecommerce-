import 'package:ecommere/core/color_app.dart';
import 'package:flutter/material.dart';

import 'views/auth/ui/login_view.dart';

void main() {
  runApp(const OurMarket());
}

class OurMarket extends StatelessWidget {
  const OurMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Our Market',
      theme:  ThemeData(
        scaffoldBackgroundColor: AppColors.kScaffoldColor,
        useMaterial3: true
      ),
      home: LoginView(),
    );
  }
}
