// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Book {
  int? BookId;
  String? BookName;
  String? AutherFirstName;
  String? AutherLastName;
  int? pageNum;
  String? Summary;
  int? PublishedDate;
  String? Publisher;
  int? ISBN;

  Book({
    this.BookId,
    this.BookName,
    this.AutherFirstName,
    this.AutherLastName,
    this.pageNum,
    this.Summary,
    this.ISBN,
    this.PublishedDate,
    this.Publisher,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};

    map['BookName'] = BookName;
    map['AutherFirstName'] = AutherFirstName;
    map['AutherLastName'] = AutherLastName;
    map['pageNum'] = pageNum;
    map['BookId'] = BookId;
    map['Summary'] = Summary;
    map['PublishedDate'] = PublishedDate;
    map['Publisher'] = Publisher;
    map['ISBN'] = ISBN;
    return map;
  }

  Book.fromMap(Map<String, dynamic> map) {
    BookName = map['BookName'];
    AutherFirstName = map['AutherFirstName'];
    AutherLastName = map['AutherLastName'];
    pageNum = map['pageNum'];
    BookId = map['BookId'];
    Summary = map['Summary'];
    PublishedDate = map['PublishedDate'];
    Publisher = map['Publisher'];
    ISBN = map['ISBN'];
  }
}
