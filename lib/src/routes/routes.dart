import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/alert_page.dart';
import '../pages/avatar_page.dart';
import '../pages/card_pages.dart';
import '../pages/animated_container.dart'; 

Map<String, WidgetBuilder> getApplicationRoutes(){
  return <String, WidgetBuilder>{
        '/'         : (BuildContext context) => HomePage(),
        'alert'     : (BuildContext context) => AlertPage(),
        'avatar'    : (BuildContext context) => AvatarPage(),
        'card'      : (BuildContext context) => CardPages(),
        'animatedContainer'  : (BuildContext context) => AnimatedContainerPages(),
      };
}