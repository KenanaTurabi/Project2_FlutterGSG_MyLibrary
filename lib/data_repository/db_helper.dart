import 'dart:io';

import 'package:flutter_application_1/model/book.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static DbHelper dbHelper = DbHelper();
  late Database database;
  final String BookId = 'id';
  final String TableName = "My library";
  final String BookNameCol = "BookName";
  final String AutherFirstNameCol = "AutherFirstName";
  final String AutherLastNameCol = "AutherLastName";
  final String pageNumCol = "pageNum";
  final String SummaryCol = "Summary";
  final String CategoryCol = "Category";
  final String PublishedDateCol = "PublishedDate";
  final String publisherCol = "publisher";
  final String ISBN_COL = "ISBN";
  initDataBase() async {
    database = await createDatabaseConnections();
  }

  createDatabaseConnections() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String folderPath = directory.path;
    return openDatabase(folderPath + '/library.db', version: 1,
        onCreate: (((db, version) {
      db.execute(
          'CREATE TABLE $TableName($BookId INTEGER PRIMARY KEY AUTOINCREMENT,$BookNameCol Text,$AutherFirstNameCol Text,$AutherLastNameCol Text,$pageNumCol INTEGER,$SummaryCol Text,$CategoryCol Text,$PublishedDateCol Text,$publisherCol Text, $ISBN_COL INTEGER)');
    })));
  }

  deleteBook(Book book) async {
    int count = await database
        .delete(TableName, where: 'id=?', whereArgs: [book.BookId]);
  }

  Future<int> insertBook(Book book) async {
    int i = await database.insert(TableName, book.toMap());
    return i;
  }

  Future<List<Book>> getAllBooks() async {
    List<Map<String, dynamic>> data = await database.query(TableName);
    return data.map((e) => Book.fromMap(e)).toList();
  }
  //Future<int>insertBook()
}
