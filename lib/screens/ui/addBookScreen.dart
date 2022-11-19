import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ui/InfoScreen.dart';
import 'package:flutter_application_1/screens/ui/NotesScreen.dart';

class AddBooksScreen extends StatelessWidget {
  TabBar get _tabBar => TabBar(
        labelColor: Colors.black,
        indicatorColor: Colors.blue,
        tabs: [
          Tab(
            text: 'Information',
          ),
          Tab(
            text: 'Notes',
          )
        ],
      );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text('My Library'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.edit),
              )
            ],
            bottom: PreferredSize(
                preferredSize: _tabBar.preferredSize,
                child: Material(
                  color: Colors.white,
                  child: _tabBar,
                )),
          ),
          body: TabBarView(
            children: [
              InfoScreen(),
              NotesScreen(),
            ],
          )),
    );
  }
}
