import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/data_repository/db_helper.dart';
import 'package:flutter_application_1/model/book.dart';

class MyLibraryProvider extends ChangeNotifier {
  bool isDarkMode = false;
  changeMode() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }

  List<Book> AllBooks = [];
  TextEditingController Title_Info_Controller = TextEditingController();
  TextEditingController LastName_Info_Controller = TextEditingController();
  TextEditingController FirstName_Info_Controller = TextEditingController();
  TextEditingController Summary_Info_Controller = TextEditingController();
  TextEditingController PuplishedDate_Info_Controller = TextEditingController();
  TextEditingController puplisher_Info_Controller = TextEditingController();
  TextEditingController pages_Info_ontroller = TextEditingController();
  TextEditingController ISBN_Info_ontroller = TextEditingController();
  getAllBooks() async {
    AllBooks = await DbHelper.dbHelper.getAllBooks();
  }

  insertNewBook() {
    Book? book;
    book!.AutherFirstName = FirstName_Info_Controller.text;
    book!.AutherLastName = LastName_Info_Controller.text;
    book!.BookName = Title_Info_Controller.text;
    book!.Summary = Summary_Info_Controller.text;
    book!.PublishedDate = PuplishedDate_Info_Controller.text;
    book.Publisher = puplisher_Info_Controller.text;
    book.ISBN = ISBN_Info_ontroller as int?;
    book.pageNum = pages_Info_ontroller as int?;
    DbHelper.dbHelper.insertBook(book);
  }
}
