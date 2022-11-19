import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:flutter_application_1/screens/ui/AllBooksScreen.dart';
import 'package:flutter_application_1/screens/ui/addBookScreen.dart';
import 'package:flutter_application_1/screens/ui/commicsScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  TabBar get _tabBar => TabBar(
        indicatorColor: Colors.blue,
        labelColor: Colors.black,
        tabs: [
          Tab(
            text: 'BOOKS',
          ),
          Tab(
            text: 'COMICS',
          )
        ],
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AddBooksScreen();
              }));
            },
          ),
          appBar: AppBar(
            bottom: PreferredSize(
              preferredSize: _tabBar.preferredSize,
              child: Material(
                color: Colors.white,
                child: _tabBar,
              ),
            ),

            title: const Text('Whishlist'),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(
                onPressed: () {
                  Provider.of<MyLibraryProvider>(context, listen: false)
                      .changeMode();
                },
                icon: Provider.of<MyLibraryProvider>(context, listen: false)
                        .isDarkMode
                    ? Icon(Icons.dark_mode)
                    : Icon(Icons.light_mode),
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            ),
            // actions: [IconButton(onPressed: () {}, icon: Icon(Icons.list))],
          ),
          body: TabBarView(
            children: [
              AllBooksScreen(),
              CommicsScreen(),
            ],
          )),
    );
  }
}
