import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/pages.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Roboto",
      ),
      initialRoute: Routes.splash,
      getPages: Pages.pages,
    );
  }
}
