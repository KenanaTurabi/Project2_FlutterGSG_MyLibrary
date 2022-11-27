import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:flutter_application_1/widget/bookWidget.dart';
import 'package:provider/provider.dart';

class AllBooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<MyLibraryProvider>(builder: (context, provider, x) {
      return ListView.separated(
          itemCount: provider.AllBooks.length,
          itemBuilder: ((context, index) {
            return BookWidget(provider.AllBooks[index]);
          }),
          separatorBuilder: ((context, index) => const Divider(
                height: 20,
                thickness: 0.5,
                indent: 5,
                endIndent: 5,
                color: Colors.black,
              )));
    });
  }
}
