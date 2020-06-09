import 'package:flutter/material.dart';

import 'page/page_home.dart';
import 'page/page_hello.dart';

class MyApp extends StatelessWidget {

  _genRouter(context, settings) {
    String routeName = settings.name;
    print(routeName);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //注册路由表
      initialRoute: '/',
      routes:{
        "Hello":(context) => Hello(),
        "/":(context) => MyHomePage(title: 'Flutter Demo 首页'), //注册首页路由
      },
      onGenerateRoute:(RouteSettings settings){
        return MaterialPageRoute(builder: (context) => _genRouter(context, settings));
      },
    );
  }
}