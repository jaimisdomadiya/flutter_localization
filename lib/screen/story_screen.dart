import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).story),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            textShow(S.of(context).story_1),
            textShow(S.of(context).story_2),
            textShow(S.of(context).story_3),
            textShow(S.of(context).story_4),
            textShow(S.of(context).story_5),
          ],
        ),
      ),
    );
  }

  Widget textShow(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: 17),
    );
  }
}
