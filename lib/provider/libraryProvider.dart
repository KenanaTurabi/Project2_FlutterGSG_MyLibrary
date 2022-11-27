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
    print(AllBooks.length);
    notifyListeners();
  }

  insertNewBook() async {
    Book book = Book(
      BookName: Title_Info_Controller.text,
      AutherFirstName: FirstName_Info_Controller.text,
      AutherLastName: LastName_Info_Controller.text,
      Summary: Summary_Info_Controller.text,
      PublishedDate: int.parse(PuplishedDate_Info_Controller.text),
      Publisher: puplisher_Info_Controller.text,
      ISBN: int.parse(ISBN_Info_ontroller.text),
      pageNum: int.parse(pages_Info_ontroller.text),
    );

    Title_Info_Controller.clear();
    LastName_Info_Controller.clear();
    FirstName_Info_Controller.clear();
    Summary_Info_Controller.clear();
    PuplishedDate_Info_Controller.clear();
    puplisher_Info_Controller.clear();
    pages_Info_ontroller.clear();
    ISBN_Info_ontroller.clear();

    await DbHelper.dbHelper.insertBook(book);
    getAllBooks();
  }
}
