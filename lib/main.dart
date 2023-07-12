import 'dart:js';

import 'package:crafted_sol/login.dart';
import 'package:crafted_sol/register.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context)=>MyLogin()},
      'register':(context)=> MyRegister()
  ));
}



