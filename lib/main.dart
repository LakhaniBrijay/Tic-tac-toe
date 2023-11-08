import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'frontpg.dart';

void main() {
  runApp(MaterialApp(
    home: tictac2(),
    debugShowCheckedModeBanner: false,
  ));
}

class tictoc extends StatefulWidget {
  const tictoc({Key? key}) : super(key: key);

  @override
  State<tictoc> createState() => _tictocState();
}

class _tictocState extends State<tictoc> {
  int cnt = 0;
  String a1 = "";
  String a2 = "";
  String a3 = "";
  String a4 = "";
  String a5 = "";
  String a6 = "";
  String a7 = "";
  String a8 = "";
  String a9 = "";
  String a = "";
  bool isWin = false;

  void set() {
    setState(() {
      if (a1 == "X" && a2 == "X" && a3 == "X" ||
          a1 == "X" && a4 == "X" && a7 == "X" ||
          a4 == "X" && a5 == "X" && a6 == "X" ||
          a2 == "X" && a5 == "X" && a8 == "X" ||
          a7 == "X" && a8 == "X" && a9 == "X" ||
          a3 == "X" && a5 == "X" && a9 == "X" ||
          a1 == "0" && a2 == "0" && a3 == "0" ||
          a1 == "0" && a4 == "0" && a7 == "0" ||
          a4 == "0" && a5 == "0" && a6 == "0" ||
          a2 == "0" && a5 == "0" && a8 == "0" ||
          a7 == "0" && a8 == "0" && a9 == "0" ||
          a3 == "0" && a5 == "0" && a9 == "0" ||
          a1 == "X" && a5 == "X" && a9 == "X" ||
          a1 == "0" && a5 == "0" && a9 == "0" ||
          a3 == "0" && a5 == "0" && a7 == "0" ||
          a3 == "X" && a5 == "X" && a7 == "X") {
        isWin = true;
      }
    });
  }

  void get() {
    setState(() {
      if (a1 == "0" && a2 == "0" && a3 == "0") {
        a = "Player 2";
      } else if (a1 == "X" && a2 == "X" && a3 == "X") {
        a = "Player 1";
      }
      if (a4 == "0" && a5 == "0" && a6 == "0") {
        a = "Player 2";
      } else if (a4 == "X" && a5 == "X" && a6 == "X") {
        a = "Player 1";
      }
      if (a7 == "0" && a8 == "0" && a9 == "0") {
        a = "Player 2";
      } else if (a7 == "X" && a8 == "X" && a9 == "X") {
        a = "Player 1";
      }
      if (a1 == "0" && a4 == "0" && a7 == "0") {
        a = "Player 2";
      } else if (a1 == "X" && a4 == "X" && a7 == "X") {
        a = "Player 1";
      }
      if (a2 == "0" && a5 == "0" && a8 == "0") {
        a = "Player 2";
      } else if (a2 == "X" && a5 == "X" && a8 == "X") {
        a = "Player 1";
      }
      if (a3 == "0" && a6 == "0" && a9 == "0") {
        a = "Player 2";
      } else if (a3 == "X" && a6 == "X" && a9 == "X") {
        a = "Player 1";
      }
      if (a1 == "0" && a5 == "0" && a9 == "0") {
        a = "Player 2";
      } else if (a1 == "X" && a5 == "X" && a9 == "X") {
        a = "Player 1";
      }
      if (a3 == "0" && a5 == "0" && a7 == "0") {
        a = "Player 2";
      } else if (a3 == "X" && a5 == "X" && a7 == "X") {
        a = "Player 1";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Center(
            child: Text("0 Tic tac toe X", style: TextStyle(fontSize: 30))),
      ),
      body: Column(
        children: [
          Container(
            child: Center(
                child: Container(
              child: Column(
                children: [
                  Expanded(
                    child: Row(children: [
                      Text("\t\t\t\tPlayer 1", style: TextStyle(fontSize: 35)),
                      Text("\t\t\t\tPlayer 2", style: TextStyle(fontSize: 35))
                    ]),
                  ),
                  Expanded(
                    child: Row(children: [
                      Text("\t\t\t\t\t\t\t\t\tX", style: TextStyle(fontSize: 35)),
                      Text("\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t0", style: TextStyle(fontSize: 35))
                    ]),
                  ),


                ],
              ),
              //color: Colors.white,
              height: 100,
              width: 400,
            )
            ),
            //color: Colors.black,
            height: 200, width: 400,

          ),
          Container(
            decoration: BoxDecoration(
                //color: Colors.black,
                ),
            child: Container(
              child: Center(
                child: Container(
                  height: 380,
                  width: 380,
                  // decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.white),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a1 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a1 = "0";
                                      } else {
                                        a1 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a1,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a2 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a2 = "0";
                                      } else {
                                        a2 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a2,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a3 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a3 = "0";
                                      } else {
                                        a3 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a3,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a4 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a4 = "0";
                                      } else {
                                        a4 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a4,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a5 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a5 = "0";
                                      } else {
                                        a5 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a5,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a6 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a6 = "0";
                                      } else {
                                        a6 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a6,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a7 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a7 = "0";
                                      } else {
                                        a7 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a7,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a8 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a8 = "0";
                                      } else {
                                        a8 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a8,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (a9 == "" && !isWin) {
                                      cnt++;
                                      if (cnt % 2 == 0) {
                                        a9 = "0";
                                      } else {
                                        a9 = "X";
                                      }
                                    }
                                    get();
                                    set();
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black54),
                                      color: Color(0xFF001456)),
                                  child: Center(
                                    child: Text(
                                      a9,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 50),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
              child: Text("\n$a",
                  style: TextStyle(
                    fontSize: 30,
                  ))),
          InkWell(
            onTap: () {
              setState(() {
                a1 = "";
                a2 = "";
                a3 = "";
                a4 = "";
                a5 = "";
                a6 = "";
                a7 = "";
                a8 = "";
                a9 = "";
                a = "";
                isWin = false;
              });
            },
            child: Container(
              child: Text(
                "Clear Score Board ",
                style: TextStyle(fontSize: 20),
              ),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  border: Border.all(color: Colors.black26)),
            ),
          )
        ],
      ),
    );
  }
}
