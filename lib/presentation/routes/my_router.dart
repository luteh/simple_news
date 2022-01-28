import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_container.dart';
import '../pages/detail/detail_page.dart';
import '../pages/detail/detail_page_args.dart';
import '../pages/home/bloc/home_bloc.dart';
import '../pages/home/home_page.dart';

class MyRouter {
  const MyRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt.get<HomeBloc>(),
              child: const HomePage(),
            );
          },
        );
      case DetailPage.routeName:
        return MaterialPageRoute(
          builder: (context) {
            final _args = settings.arguments as DetailPageArgs;
            return DetailPage(
              args: _args,
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('Unknown Route'),
              ),
            );
          },
        );
    }
  }
}
