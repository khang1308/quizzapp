import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quizz_app/manhinh/man1.dart';
import 'package:quizz_app/manhinh/man2.dart';
import 'package:quizz_app/manhinh/man3.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'gen/localization/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool? repeat = prefs.getBool('repeat');
  print(repeat);
  await prefs.setBool('repeat', true);
  final bool? rep = prefs.getBool('repeat');
  print(rep);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = const Locale("vi");
  List<Locale> supp = [const Locale("vi"), const Locale("en")];
  // This widget is the root of your application.
  void toggleLanguage() {
    setState(() {
      if (locale.languageCode == "vi") {
        locale = const Locale("en");
      } else {
        locale = const Locale("vi");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print("ssssss");
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Splash(),
        '/SC2': (context) => const SC2(),
        '/SC3': (context) => const SC3()
      },
      debugShowCheckedModeBanner: false,
      supportedLocales: Str.delegate.supportedLocales,
      localizationsDelegates: const [
        Str.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: sc1(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.press});
  final VoidCallback press;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(Str.of(context).asd)),
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widget.press.call();
                    });
                  },
                  child: const Text('Change')))
        ],
      ),
    );
  }
}
//launchr icon
