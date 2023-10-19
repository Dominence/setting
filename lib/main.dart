import 'package:flutter/material.dart';
import 'package:settings/setup/tuggle.dart';
import 'package:theme_manager/theme_manager.dart';
import 'package:theme_manager/change_theme_widget.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      return
        MaterialApp(debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(sliderTheme: SliderThemeData(
          activeTickMarkColor: Colors.blue.shade200,
          inactiveTrackColor: Colors.white30,
          trackHeight: 17
          ),
              brightness: Brightness.light),
          darkTheme: ThemeData(brightness: Brightness.dark),
          themeMode: ThemeMode.dark,
          home: tuggle(),
        );
    }
}


