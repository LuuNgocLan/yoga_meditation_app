import 'package:flutter/material.dart';
import 'package:yoga_meditation_app/screens/get_started/get_started_page.dart';
import 'package:yoga_meditation_app/screens/home/home_page.dart';
import 'package:yoga_meditation_app/screens/play_music/play_music_page.dart';

//Note:  Warning: When using initialRoute, don’t define a home property on MaterialApp
class Routes {
  Routes._();

  static const String started = '/started';
  static const String home = '/home';
  static const String playMusic = '/playMusic';

  static final routes = <String, WidgetBuilder>{
    started: (BuildContext context) => const GetStartedPage(),
    home: (BuildContext context) => const HomePage(),
    playMusic: (BuildContext context) => const PlayMusicPage(),
  };
}
