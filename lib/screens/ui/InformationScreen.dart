import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';

class InformationScreen extends StatefulWidget {
  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  bool value = false;
  String _myCategory = "";

  String _myCategoryResult = "";

  void initState() {
    _myCategory = '';
    _myCategoryResult = '';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                //controller:
                // Provider.of<MyLibraryProvider>(context).Title_Info_Controller,
                decoration: const InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    label: Text(
                      'Title',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
              Row(
                children: [
                  Checkbox(
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                  Text("Last name only"),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      /* controller: Provider.of<MyLibraryProvider>(context)
                        .LastName_Info_Controller, */
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          label: Text(
                            'Lastname',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextField(
                      /* controller: Provider.of<MyLibraryProvider>(context)
                        .LastName_Info_Controller, */
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          label: Text(
                            'Firstname',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/1948.jpg',
                      fit: BoxFit.fill,
                    ),
                    width: 150,
                    height: 120,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: TextField(
                    maxLines: 4,
                    /* controller: Provider.of<MyLibraryProvider>(context)
                        .Summary_Info_Controller, */
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1)),
                        label: Text(
                          'Summary',
                          style: TextStyle(color: Colors.blue),
                        )),
                  )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Row(children: [
                  Expanded(
                    child: DropDownFormField(
                      titleText: 'Caregory',
                      value: _myCategory,
                      onChanged: (value) {
                        setState(() {
                          _myCategory = value;
                        });
                      },
                      onSaved: (value) {
                        setState(() {
                          _myCategory = value;
                        });
                      },
                      dataSource: [
                        {
                          "display": "Religious",
                          "value": "Religious",
                        },
                        {
                          "display": "Histoy",
                          "value": "Histoy",
                        },
                        {
                          "display": "Fiction",
                          "value": "Fiction",
                        },
                        {
                          "display": "Science",
                          "value": "Science",
                        },
                      ],
                      textField: 'display',
                      valueField: 'value',
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.blue,
                      ))
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      /* controller: Provider.of<MyLibraryProvider>(context)
                      .PuplishedDate_Info_Controller, */
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          label: Text(
                            'Published date',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: TextField(
                      /* controller: Provider.of<MyLibraryProvider>(context)
                      .puplisher_Info_Controller, */
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          label: Text(
                            'Publisher',
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                /* controller:
                Provider.of<MyLibraryProvider>(context).pages_Info_ontroller, */
                decoration: const InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    label: Text(
                      'Pages',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                /* controller:
                Provider.of<MyLibraryProvider>(context).ISBN_Info_ontroller, */
                decoration: const InputDecoration(
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide(width: 1)),
                    label: Text(
                      'ISBN',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(50),
                ),
                onPressed: (() {}),
                child: Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
