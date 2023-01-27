import 'package:flutter/material.dart';
import 'package:flutter_webservice_login_postman/screens/auth/auth_screen.dart';
import 'package:get/get.dart';

main() async {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthScreen(),
  ));
}
