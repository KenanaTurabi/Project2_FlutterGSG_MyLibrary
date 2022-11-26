// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Book {
  String? BookName;
  String? AutherFirstName;
  String? AutherLastName;
  int? pageNum;
  int? BookId;
  String? Summary;
  String? Category;
  String? PublishedDate;
  String? Publisher;
  int? ISBN;
  Book(
      {this.BookName,
      this.AutherFirstName,
      this.AutherLastName,
      this.pageNum,
      this.BookId,
      this.Summary,
      this.Category,
      this.PublishedDate,
      this.Publisher,
      this.ISBN});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'BookName': BookName,
      'AutherFirstName': AutherFirstName,
      'AutherLastName': AutherLastName,
      'pageNum': pageNum,
      'BookId': BookId,
      'Summary': Summary,
      'Category': Category,
      'PublishedDate': PublishedDate,
      'Publisher': Publisher,
      'ISBN': ISBN,
    };
  }

  Book.fromMap(Map<String, dynamic> map) {
    this.BookName = map['BookName'];
    this.AutherFirstName = map['AutherFirstName'];
    this.AutherLastName = map['AutherLastName'];
    this.pageNum = map['pageNum'];
    this.BookId = map['BookId'];
    this.Summary = map['Summary'];
    this.Category = map['Category'];
    this.PublishedDate = map['PublishedDate'];
    this.Publisher = map['Publisher'];
    this.ISBN = map['ISBN'];
  }
}
