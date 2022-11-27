import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/book.dart';

class BookWidget extends StatelessWidget {
  Book book;
  BookWidget(this.book);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(book.BookName.toString()),
            Row(
              children: [
                Text(book.AutherLastName.toString()),
                Text(book.pageNum.toString())
              ],
            ),
            Text(book.PublishedDate.toString()),
            Text('Buy')
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
    );
  }
}
