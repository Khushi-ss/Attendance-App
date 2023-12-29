import 'package:demo/daily_Report.dart';
import 'package:demo/gpsReport.dart';
import 'package:demo/monthly_report.dart';
import 'package:demo/salary_Report.dart';
import 'package:flutter/material.dart';

import 'dashBoard.dart';
import 'leave.dart';
import 'more.dart';

class reports extends StatefulWidget {
  const reports({super.key});

  @override
  State<reports> createState() => _reportsState();
}

class _reportsState extends State<reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Reports",
          style: TextStyle(color: Colors.white,fontSize: 18),
        ),
          backgroundColor: const Color(0xFF0802A3)
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.only(left: 5, top: 150),
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const daily_Report()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(40),
                            margin: const EdgeInsets.only(top: 10, left: 19),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFFB4D4FF),
                                    offset: Offset(1, 3))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/images/daily-tasks.png',
                                      width: 50),
                                  const Text(
                                    'Daily Report',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>const monthly_report()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(35),
                            margin: const EdgeInsets.only(top: 10, left: 19),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFFB4D4FF),
                                    offset: Offset(1, 3))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/images/monthly.png',
                                      width: 50),
                                  const Text(
                                    'Monthly Report',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const gpsReport()));
                    },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(40),
                            margin: const EdgeInsets.only(top: 10, left: 19),
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Color(0xFFB4D4FF),
                                    offset: Offset(1, 3))
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Expanded(
                              child: Column(
                                children: <Widget>[
                                  Image.asset('assets/images/GPS.png', width: 50),
                                  const Text(
                                    'GPS Report',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const salary_Report()));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(40),
                              margin: const EdgeInsets.only(top: 10, left: 19),
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 5,
                                      color: Color(0xFFB4D4FF),
                                      offset: Offset(1, 3))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Expanded(
                                child: Column(
                                  children: <Widget>[
                                    Image.asset('assets/images/salary.png',
                                        width: 50),
                                    const Text(
                                      'Salary Report',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          // child: Container(
          //   child: const Row(
          //     children: <Widget>[
          //
          //     ],
          //   ),
          // ),
          // ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              child: const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.blueGrey,
                        offset: Offset(1, 3))
                  ],
                  color: Color(0xFF0802A3),
                ),
                accountName: Text("Khushi Sharma"),
                accountEmail: Text("khushisharma@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color(0xFFFF7676),
                  child: Text(
                    "K",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home,color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)]),
              title: const Text("Home",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dashBoard()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_work_sharp,color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)]),
              title: const Text("Leave",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const leave()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.report,color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)]),
              title: const Text("Report",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const reports()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.more,color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)]),
              title: const Text("More",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const more()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
