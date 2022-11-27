import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:flutter_application_1/screens/ui/AllBooksScreen.dart';
import 'package:flutter_application_1/screens/ui/HomeScreen.dart';
import 'package:flutter_application_1/screens/ui/splash.dart';
import 'package:flutter_application_1/widget/bookWidget.dart';
//import 'package:flutter_application_1/screens/ui/InfoScreen.dart';
import 'package:provider/provider.dart';

import 'data_repository/db_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDataBase();

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
    Provider.of<MyLibraryProvider>(context, listen: false).getAllBooks();
    // TODO: implement build
    return MaterialApp(
      theme: Provider.of<MyLibraryProvider>(context).isDarkMode
          ? ThemeData.dark()
          : ThemeData.light(),
      home: SplashScreen(),
    );
  }
}
