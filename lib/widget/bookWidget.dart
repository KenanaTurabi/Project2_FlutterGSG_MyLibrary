import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/book.dart';
import 'package:flutter_application_1/provider/libraryProvider.dart';
import 'package:provider/provider.dart';

class BookWidget extends StatelessWidget {
  Book book;
  BookWidget(this.book);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                book.BookName.toString(),
                style: TextStyle(
                    color: Color.fromARGB(255, 63, 196, 241),
                    fontWeight: FontWeight.w900,
                    fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(book.AutherLastName.toString()),
              SizedBox(
                height: 15,
              ),
              Text(
                'BUY',
                style: TextStyle(
                    color: Color.fromARGB(255, 190, 156, 51),
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          SizedBox(
            width: 80,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                book.pageNum.toString() + " pages",
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                book.PublishedDate.toString(),
                style: TextStyle(color: Colors.grey),
              ),
              IconButton(
                icon: const Icon(Icons.delete),
                color: Colors.black,
                onPressed: () {
                  Provider.of<MyLibraryProvider>(context, listen: false)
                      .deleteBook(book);
                },
              ),
            ],
          ),
          Spacer(),
          Container(
              width: 100,
              child: Image.asset(
                "assets/images/Redbook.jpg",
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
