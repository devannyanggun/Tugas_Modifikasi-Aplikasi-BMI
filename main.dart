import 'package:flutter/material.dart';
import 'bmi.dart';
import 'profile.dart';

void main() => runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home:  InputBMI(),
      routes: <String, WidgetBuilder>{
        "/profile" : (BuildContext context) => profile(),
      },
    ),
);