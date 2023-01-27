import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/auth_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        TextButton(
            onPressed: () async {
              final SharedPreferences? prefs = await _prefs;
              prefs?.clear();
              Get.offAll(AuthScreen());
            },
            child: Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ))
      ]),
      body: Center(
        child: Column(
          children: [
            Text('Welcome home'),
            TextButton(
                onPressed: () async {
                  final SharedPreferences? prefs = await _prefs;
                  print(prefs?.get('Data'));
                },
                child: const Text(
                  'Login Sucessfully'
                  'Message": "Login Success'
                  'name":"Test One'
                  'email:"abc@a.bc"'
                  'phone:"1111111111"'
                  'password:"123456"',
                  style: TextStyle(color: Colors.lightBlue),
                ))
          ],
        ),
      ),
    );
  }
}
