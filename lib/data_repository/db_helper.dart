import 'dart:developer';
import 'dart:io';

import 'package:flutter_application_1/model/book.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static DbHelper dbHelper = DbHelper();
  late Database database;
  final String BookId = 'BookId';
  final String TableName = "Mylibrary";
  final String BookNameCol = "BookName";
  final String AutherFirstNameCol = "AutherFirstName";
  final String AutherLastNameCol = "AutherLastName";
  final String pageNumCol = "pageNum";
  final String SummaryCol = "Summary";
  final String PublishedDateCol = "PublishedDate";
  final String publisherCol = "publisher";
  final String ISBN_COL = "ISBN";
  initDataBase() async {
    database = await createDatabaseConnections();
  }

  Future<Database> createDatabaseConnections() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    return openDatabase('$folderPath /library2022.db', version: 1,
        onCreate: (db, version) {
      log('the database is created');
      db.execute('''CREATE TABLE $TableName(
          $BookId INTEGER PRIMARY KEY AUTOINCREMENT,
          $BookNameCol Text,
          $AutherFirstNameCol Text,
          $AutherLastNameCol Text,
          $pageNumCol INTEGER,
          $SummaryCol Text,
          $PublishedDateCol INTEGER,
          $publisherCol Text,
           $ISBN_COL INTEGER)''');
    }, onOpen: (db) {
      log('the database is connected');
    });
  }

  Future<int> deleteBook(Book book) async {
    int count = await database
        .delete(TableName, where: 'BookId=?', whereArgs: [book.BookId]);
    return count;
  }

  Future<int> insertBook(Book book) async {
    int i = await database.insert(TableName, book.toMap());
    return i;
  }

  Future<List<Book>> getAllBooks() async {
    List<Map<String, dynamic>> data = await database.query(TableName);
    return data.map((e) => Book.fromMap(e)).toList();
  }
}
