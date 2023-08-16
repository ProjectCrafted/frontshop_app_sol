import 'login.dart';
import 'register.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (context) => MyLogin(),
        'register': (context) => Myregister(),
      },
  ),
  );
}