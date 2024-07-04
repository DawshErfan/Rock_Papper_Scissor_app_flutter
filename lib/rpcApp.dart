import 'dart:math';
//import 'package:url_launcher/link.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class rockPapperScissor extends StatefulWidget {
  const rockPapperScissor({super.key});

  @override
  State<rockPapperScissor> createState() => _rockPapperScissorState();
}

class _rockPapperScissorState extends State<rockPapperScissor> {
  int top = 1;
  int bot = 1;
  int pointCom = 0;
  int pointPlayer = 0;
  @override
  Widget build(BuildContext context) {
    final getWidht = MediaQuery.of(context).size.width;
    final getHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: getAppbar(),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 190, 255, 195),
            Color.fromARGB(255, 114, 255, 119),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: SafeArea(
            child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(padding: EdgeInsets.only(top: getHeight * 0.1)),
                //                Rock Papper Scissor **********************************
                Wrap(
                  children: [
                    Container(
                        width: 150,
                        height: 150,
                        child: Image(image: AssetImage("images/$top.png"))),
                    Padding(padding: EdgeInsets.only(left: getWidht * 0.05)),
                    Container(
                      height: 150,
                      child: VerticalDivider(
                        thickness: 3,
                        endIndent: 10,
                        color: Colors.green[500],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: getWidht * 0.05)),
                    Container(
                        width: 150,
                        height: 150,
                        child: Image(image: AssetImage("images/$bot\p.png"))),
                  ],
                ),
                Wrap(
                  children: [
                    Text(
                      "Computer",
                      style: TextStyle(color: Colors.black45, fontSize: 22),
                    ),
                    Padding(padding: EdgeInsets.only(left: getWidht * 0.15)),
                    Padding(padding: EdgeInsets.only(left: getWidht * 0.15)),
                    Text("Player",
                        style: TextStyle(color: Colors.black45, fontSize: 22)),
                  ],
                ),
                //                Rock Papper Scissor **********************************
                Padding(padding: EdgeInsets.only(top: getHeight * 0.1)),
                Wrap(
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          bot = 1;
                          top = Random().nextInt(3) + 1;
                          // Rock
                          if (top == 1 && bot == 2) pointPlayer += 1;
                          if (top == 1 && bot == 3) pointCom += 1;
                          // Papper
                          if (top == 2 && bot == 1) pointCom += 1;
                          if (top == 2 && bot == 3) pointPlayer += 1;
                          // Scissor
                          if (top == 3 && bot == 1) pointPlayer += 1;
                          if (top == 3 && bot == 2) pointCom += 1;
                        });
                      },
                      child: Text(
                        "Rock",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 10,
                        minimumSize: Size(125, 50),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 10)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            bot = 2;
                            top = Random().nextInt(3) + 1;
                            // Rock
                            if (top == 1 && bot == 2) pointPlayer += 1;
                            if (top == 1 && bot == 3) pointCom += 1;
                            // Papper
                            if (top == 2 && bot == 1) pointCom += 1;
                            if (top == 2 && bot == 3) pointPlayer += 1;
                            // Scissor
                            if (top == 3 && bot == 1) pointPlayer += 1;
                            if (top == 3 && bot == 2) pointCom += 1;
                          });
                        },
                        child: Text(
                          "Papper",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(125, 50),
                            elevation: 10,
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ))),
                    Padding(padding: EdgeInsets.only(right: 10)),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            bot = 3;
                            top = Random().nextInt(3) + 1;
                            // Rock
                            if (top == 1 && bot == 2) pointPlayer += 1;
                            if (top == 1 && bot == 3) pointCom += 1;
                            // Papper
                            if (top == 2 && bot == 1) pointCom += 1;
                            if (top == 2 && bot == 3) pointPlayer += 1;
                            // Scissor
                            if (top == 3 && bot == 1) pointPlayer += 1;
                            if (top == 3 && bot == 2) pointCom += 1;
                          });
                        },
                        child: Text(
                          "Scissor",
                          style: TextStyle(fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(125, 50),
                          elevation: 10,
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        )),
                  ],
                ),
                Padding(padding: EdgeInsets.only(top: 50)),
                Text(
                  "Player Points: $pointPlayer\n Computer Points: $pointCom",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
                Padding(padding: EdgeInsets.only(top: 25)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //https://github.com/DawshErfan
                    Text("Created by: "),
                    TextButton(
                        onPressed: () {
                          openMyGH();
                        },
                        child: Text("Erfan Naeini")),
                  ],
                ),
                Text(""),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

PreferredSizeWidget getAppbar() {
  return AppBar(
    title: Text("Rock Papper Scissor"),
    centerTitle: true,
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
  );
}

openMyGH() async {
  final Uri url = Uri.parse('https://github.com/DawshErfan');
  if (!await launchUrl(url)) {
    throw Exception('Cannot find the link');
  }
}
