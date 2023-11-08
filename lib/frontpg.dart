import 'package:flutter/material.dart';
import 'package:tictoc/main.dart';

class tictac2 extends StatefulWidget {
  const tictac2({Key? key}) : super(key: key);

  @override
  State<tictac2> createState() => _tictac2State();
}

class _tictac2State extends State<tictac2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 130),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return tictoc();
                  },
                ));
              },
              child: Text("play with friends"),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 130),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return tictoc();
                  },
                ));
              },
              child: Text("play with computer"),
            ),
          ),
        ],
      ),
    );
  }
}
