import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';



class ShowSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'search for book, chapter, context or text',
      home: SearchBar_widget(),
    );
  }
}

class SearchBar_widget extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<SearchBar_widget> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 58.0, right: 10, left: 10),

      /// In AnimSearchBar widget, the width, textController, onSuffixTap are required properties.
      /// You have also control over the suffixIcon, prefixIcon, helpText and animationDurationInMilli
      child: AnimSearchBar(
        width: 400,
        textController: textController,
        onSuffixTap: () {
          setState(() {
            textController.clear();
          });
        },
      ),
    );
  }
}