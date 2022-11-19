import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:flutter_application_1/screens/ui/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyLibraryProvider>(
        create: (context) {
          return MyLibraryProvider();
        },
        child: AppInit());
  }
}

class AppInit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: Provider.of<MyLibraryProvider>(context).isDarkMode
          ? ThemeData.dark()
          : ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
