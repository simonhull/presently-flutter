import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:presently/src/routes.dart';
import 'package:presently/src/screens/LoginScreen.dart';

main() => runApp(Platform.isIOS
    ? CupertinoApp(
        title: "Present-ly",
        debugShowCheckedModeBanner: false,
        home: LoginScreenIOS(),
        routes: iosRoutes,
      )
    : MaterialApp(
        title: "Present-ly",
        debugShowCheckedModeBanner: false,
        home: LoginScreenAndroid(),
        routes: androidRoutes,
      ));
