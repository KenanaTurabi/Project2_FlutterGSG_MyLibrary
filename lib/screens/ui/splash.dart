import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ui/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  NavigationMethod() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return HomeScreen();
    }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NavigationMethod();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 150, 232),
      body: Center(
        child: Icon(
          Icons.library_add_outlined,
          size: 100,
          color: Colors.white,
        ),
      ),
    );
  }
}
