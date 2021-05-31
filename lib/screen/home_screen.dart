import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';
import 'package:flutter_localization/provider/lnaguage_change_notifier.dart';
import 'package:flutter_localization/screen/hindi_history_screen.dart';
import 'package:flutter_localization/screen/story_screen.dart';
import 'package:flutter_localization/utils/shared_predrences/shared_prefrences.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void storyWidget() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StoryScreen()));
  }

  void descriptionWidget() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HindiHistory()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  S.of(context).welcome_msg,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: _showModalBottomSheet,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(S.of(context).change_language,
                          style: TextStyle(color: Colors.white, fontSize: 17))),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: InkWell(
                onTap: storyWidget,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(S.of(context).read_story,
                        style: TextStyle(color: Colors.white, fontSize: 17))),
              ),
            ),
            Flexible(
              flex: 2,
              child: InkWell(
                onTap: descriptionWidget,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    S.of(context).history_of_hindi,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showModalBottomSheet() {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () async {
                Navigator.of(context).pop();
                await AppPreference().setLanguageTheme('hi');
                context.read<LanguageChangeProvider>().changeLocale('hi');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Hindi',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                  if (AppPreference().language == 'hi')
                    Icon(
                      Icons.check,
                      color: Colors.indigo,
                    )
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
              thickness: 0,
              height: 40,
            ),
            InkWell(
              onTap: () async {
                Navigator.of(context).pop();
                await AppPreference().setLanguageTheme('en');
                context.read<LanguageChangeProvider>().changeLocale('en');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('English',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                  if (AppPreference().language == 'en')
                    Icon(
                      Icons.check,
                      color: Colors.indigo,
                    )
                ],
              ),
            ),
            Divider(
              color: Colors.transparent,
              thickness: 0,
              height: 40,
            ),
            InkWell(
              onTap: () async {
                Navigator.of(context).pop();
                await AppPreference().setLanguageTheme('ar');
                context.read<LanguageChangeProvider>().changeLocale('ar');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text('Arabic',
                        style: TextStyle(fontSize: 14, color: Colors.black)),
                  ),
                  if (AppPreference().language == 'ar')
                    Icon(
                      Icons.check,
                      color: Colors.indigo,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
