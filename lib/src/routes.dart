
import 'package:flutter/widgets.dart';
import 'package:presently/src/screens/HomeScreen.dart';
import 'package:presently/src/screens/LoginScreen.dart';


  var iosRoutes = <String, WidgetBuilder> {
    "Login":(BuildContext context) => new LoginScreenIOS(),
    "Home":(BuildContext context) => new HomeScreenIOS(),
  };
  var androidRoutes = <String, WidgetBuilder> {
    "Login":(BuildContext context) => new LoginScreenAndroid(),
    "Home":(BuildContext context) => new HomeScreenAndroid(),
  };