import 'package:flutter/material.dart';

void main() {
  runApp(BasketballPointsCounter());
}

class BasketballPointsCounter extends StatefulWidget {
  const BasketballPointsCounter({super.key});

  @override
  State<BasketballPointsCounter> createState() =>
      _BasketballPointsCounterState();
}

class _BasketballPointsCounterState extends State<BasketballPointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;
  Color backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8.0, // gap between adjacent chips
                runSpacing: 4.0, // gap between lines

                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    onPressed: () {
                      setState(() {
                        backgroundColor = Colors.red;
                      });
                    },
                    child: Text(
                      "Red",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {
                      setState(() {
                        backgroundColor = Colors.blue;
                      });
                    },
                    child: Text(
                      "Blue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                    ),
                    onPressed: () {
                      setState(() {
                        backgroundColor = Colors.yellow;
                      });
                    },
                    child: Text(
                      "Yellow",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.purple,
                  //   ),
                  //   onPressed: () {
                  //     setState(() {
                  //       backgroundColor = Colors.purple;
                  //     });
                  //   },
                  //   child: Text(
                  //     "Purple",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        backgroundColor = Colors.white;
                      });
                    },
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "$teamAPoints",
                        style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "$teamBPoints",
                        style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 2 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(4),
                          ),
                        ),
                        child: Text(
                          "Add 3 Point",
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(4),
                ),
              ),
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
