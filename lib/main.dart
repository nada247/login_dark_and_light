import 'package:dark_and_light_login/app_theme.dart';
import 'package:dark_and_light_login/login.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(
      MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        themeMode: ThemeMode.system,
      )
  );
}