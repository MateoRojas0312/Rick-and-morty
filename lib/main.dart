import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rick_and_morty/pages/firstScreen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system, // add this
      title: 'Material App',
      initialRoute: 'FirstScreen',

      getPages: [
        GetPage(name: '/FirstScreen', page: () => FirstScreen()),
      ],
    );
  }
}
