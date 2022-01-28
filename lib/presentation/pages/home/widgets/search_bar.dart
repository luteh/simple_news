import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      pinned: false,
      backgroundColor: Colors.white,
      title: TextFormField(
        controller: _textController,
        decoration: InputDecoration(
          hintText: 'About World',
          filled: true,
          isDense: true,
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        onChanged: (value) => _onChangedSearch(context, value),
      ),
    );
  }

  _onChangedSearch(BuildContext context, String value) {
    context.read<HomeBloc>().add(HomeEvent.changeSearchKeyword(keyword: value));
  }
}
