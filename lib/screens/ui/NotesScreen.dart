import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:provider/provider.dart';

class NotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                      child: Image(
                    image: AssetImage("assets/images/1948.jpg"),
                    width: 150,
                    height: 300,
                  ))
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(children: [
                  Text(
                    Provider.of<MyLibraryProvider>(context)
                        .Title_Info_Controller
                        .text,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      Provider.of<MyLibraryProvider>(context)
                              .FirstName_Info_Controller
                              .text +
                          " " +
                          Provider.of<MyLibraryProvider>(context)
                              .LastName_Info_Controller
                              .text,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 14)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(children: [
                    Text("Published date: "),
                    Text(
                      Provider.of<MyLibraryProvider>(context)
                          .PuplishedDate_Info_Controller
                          .text,
                      style: TextStyle(
                          color: Color.fromARGB(255, 199, 158, 36),
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text("Publisher : "),
                    Text(
                      Provider.of<MyLibraryProvider>(context)
                          .puplisher_Info_Controller
                          .text,
                      style: TextStyle(
                          color: Color.fromARGB(255, 199, 158, 36),
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    Provider.of<MyLibraryProvider>(context)
                            .pages_Info_ontroller
                            .text +
                        " pages",
                    style: TextStyle(
                        color: Color.fromARGB(255, 199, 158, 36),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text("ISBN: "),
                    Text(
                      Provider.of<MyLibraryProvider>(context)
                          .ISBN_Info_ontroller
                          .text,
                      style: TextStyle(
                          color: Color.fromARGB(255, 199, 158, 36),
                          fontWeight: FontWeight.w700),
                    ),
                  ]),
                ]),
              ),
            ],
          ),
          Text(
            Provider.of<MyLibraryProvider>(context)
                .Summary_Info_Controller
                .text,
            style: TextStyle(
                color: Color.fromARGB(255, 199, 158, 36),
                fontWeight: FontWeight.w700),
          )
        ]));
  }
}
