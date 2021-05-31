import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';
import 'package:flutter_localization/utils/shared_predrences/shared_prefrences.dart';

class HindiHistory extends StatefulWidget {
  const HindiHistory({Key? key}) : super(key: key);

  @override
  _HindiHistoryState createState() => _HindiHistoryState();
}

class _HindiHistoryState extends State<HindiHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).history_of_hindi),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textTaught(S.of(context).history_taught_1),
            textTaught(S.of(context).history_taught_2),
            SizedBox(height: 0),
            textShow(S.of(context).hindi_description_1),
            textShow(S.of(context).hindi_description_2),
          ],
        ),
      ),
    );
  }

  Widget textShow(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.black, fontSize: 16),
    );
  }

  Widget textTaught(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
    );
  }
}
