import 'package:flutter/material.dart';

import 'employeeDataModel.dart';

class DetailedPage extends StatefulWidget {
  String firstname;
  String lastname;
  String contact;
  String images;

  DetailedPage({
    required this.firstname,
    required this.lastname,
    required this.images,
    required this.contact,
  });

  // final EmployeeDataModel items;

  // const DetailedPage({super.key, required this.items, });

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.all(Radius.circular(15))),
                          child: Icon(Icons.arrow_back_ios_new)),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(15))),
                        child: Icon(
                          Icons.mode_edit_sharp,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        )),
                    child: Image.network(
                      widget.images,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          widget.firstname + "  " + widget.lastname,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "(+" + widget.contact + ")",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
        
              ///
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, bottom: 5),
                margin: EdgeInsets.only(bottom: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.messenger_outline_rounded,
                            color: Colors.white,
                          )),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.call,
                            color: Colors.white,
                          )),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.video_call_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 209, 208, 208),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.mail_outline,
                            color: Color.fromARGB(255, 99, 97, 97),
                          )),
                    ]),
              ),
              //
              Container(
                height: 50,
                color: Color.fromARGB(255, 241, 235, 241),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mobile', style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 71, 70, 70)
                        ),
                        ),
                        Text(
                          "(+" + widget.contact + ")",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],),
                      Container(
                        width: 80 ,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                              Icons.messenger_outline_rounded,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.grey,
                            )
                              ],
                            )
                          ],
                        ),
                      )
                  ]),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home', style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 71, 70, 70)
                        ),
                        ),
                        Text(
                          "(+" + widget.contact + ")",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],),
                      Container(
                        width: 80 ,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                              Icons.messenger_outline_rounded,
                              color: Colors.grey,
                            ),
                            Icon(
                              Icons.call,
                              color: Colors.grey,
                            )
                              ],
                            )
                          ],
                        ),
                      )
                  ]),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Home', style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 71, 70, 70)
                        ),
                        ),
                        Text(
                          "(+" + widget.contact + ")",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ],),
                       Icon(
                            Icons.video_call_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
          
                  ]),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                     children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 67, 63, 148),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.location_searching_outlined,
                            color: Colors.white,
                          )),
                          SizedBox(height: 10),
                          Text('Share Location',style: TextStyle(
                            fontSize: 15
                          ),)
                     ], 
                    ),
                    Column(
                     children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 180, 178, 178),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.qr_code_outlined,
                            color: Colors.black,
                          )),
                          SizedBox(height: 10),
                          Text('Qr Code',style: TextStyle(
                            fontSize: 15
                          ),)
                     ], 
                    ),
                    Column(
                     children: [
                      Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.cyan,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Icon(
                            Icons.qr_code_outlined,
                            color: Colors.black,
                          )),
                          SizedBox(height: 10),
                          Text('Share Contact',style: TextStyle(
                            fontSize: 15
                          ),)
                     ], 
                    )
                    
                  ],
                ),
              )
            ],
          ),
        ),
      );
    
  }
}
