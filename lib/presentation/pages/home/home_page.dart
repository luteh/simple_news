import 'package:flutter/material.dart';

import 'widgets/news_list.dart';
import 'widgets/search_bar.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxScrolled) => [
            const SearchBar(),
          ],
          body: const NewsList(),
        ),
      ),
    );
  }
}
