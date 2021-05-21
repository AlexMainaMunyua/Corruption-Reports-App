import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  final appdata = GetStorage();

  @override
  Widget build(BuildContext context) {
    appdata.writeIfNull("darkmode", false);

    String todayDate = DateFormat.yMMMMEEEEd().format(DateTime.now());

    return SimpleBuilder(builder: (_) {
      bool isDarkMode = appdata.read("darkmode");
      return ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                child: Text(
              "We are in the process of finding a team of volunteers who will regaulary verify all the content submitted and help fight corruption.",
              style: TextStyle(fontWeight: FontWeight.w300),
            )),
          ),
          Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        isDarkMode
                            ? 'images/dashboardDark.svg'
                            : 'images/dashboardLight.svg',
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ))),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: isDarkMode
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.blue.shade900,
                                    Colors.blue
                                  ]))
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.blue,
                                    Colors.blue.shade200
                                  ])),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Report",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Corruption",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total Count - 0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '$todayDate',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: isDarkMode
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.green.shade900,
                                    Colors.green
                                  ]))
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.green,
                                    Colors.green.shade200
                                  ])),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Lodge",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Complaint",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total Count - 0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '$todayDate',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: isDarkMode
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.deepOrange,
                                    Colors.orange
                                  ]))
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.orange,
                                    Colors.orange.shade200
                                  ])),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Trap",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Raids",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total Count - 0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '$todayDate',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          decoration: isDarkMode
                              ? BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.deepPurple,
                                    Colors.purple
                                  ]))
                              : BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Colors.purple,
                                    Colors.purple.shade200
                                  ])),
                          height: 150,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Track",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Complaint",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Total Count - 0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    '$todayDate',
                                    style: TextStyle(color: Colors.white),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );
    });
  }
}
