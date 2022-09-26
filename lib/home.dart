import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:task_round_tempo_1/DetailedPage.dart';

import 'employeeDataModel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        elevation: 0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: const Icon(
                Icons.mode_edit_sharp,
                color: Color.fromARGB(255, 3, 79, 142),
                size: 35,
              ),
              onPressed: () {
                // handle the press
              },
            ),
          ),
        ],
      ),
      body: Container(
          child: FutureBuilder(
              future: ReadJsonData(),
              builder: (context, data) {
                if (data.hasError) {
                  return Center(child: Text('${data.error}'));
                } else if (data.hasData) {
                  var items = data.data as List<EmployeeDataModel>;
                  return ListView.builder(
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailedPage(
                                      firstname: items[index].Fname.toString(),
                                      lastname: items[index].Lname.toString(),
                                      images: items[index].imageUrl.toString(),
                                      contact:
                                          items[index].ContactNo.toString(),
                                    )));
                          },
                          child: Card(
                            elevation: 5,
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    // color: Colors.black,
                                    child: Image(
                                      image: NetworkImage(
                                          items[index].imageUrl.toString()),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, left: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Text(
                                            items[index].Fname.toString() +
                                                " " +
                                                items[index].Lname.toString(),
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 8, right: 8),
                                          child: Text(
                                            "(+" +
                                                items[index]
                                                    .ContactNo
                                                    .toString() +
                                                ")",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              })),
    );
  }

  Future<List<EmployeeDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonFile/employees.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => EmployeeDataModel.fromJson(e)).toList();
  }
}
