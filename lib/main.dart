import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';
import 'package:flutter_localization/provider/lnaguage_change_notifier.dart';
import 'package:flutter_localization/screen/home_screen.dart';
import 'package:flutter_localization/utils/shared_predrences/shared_prefrences.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference().getLanguage();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageChangeProvider>(
          create: (_) => LanguageChangeProvider(),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          title: "Flutter Localization",
          locale: Provider.of<LanguageChangeProvider>(context, listen: true)
              .currentLocale,
          localizationsDelegates: [
            S.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          home: MyHomePage(title: 'Flutter Localization'),
        );
      },
    );
  }
}
