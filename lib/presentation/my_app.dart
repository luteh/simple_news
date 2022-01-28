import 'package:flutter/material.dart';

import 'pages/home/home_page.dart';
import 'routes/my_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.routeName,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
