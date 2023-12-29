import 'package:demo/leave.dart';
import 'package:demo/reports.dart';
import 'package:flutter/material.dart';

import 'more.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({super.key});

  @override
  State<dashBoard> createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white,fontSize: 18),
        ),
        backgroundColor: const Color(0xFF0802A3),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: const Color(0xFFF0F0F0),
                  child: ListTile(
                    leading: Image.asset(
                      'assets/images/profile.png',
                      height: 30,
                      width: 30,
                    ),
                    title: const Text(
                      'Khushisharma',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    // trailing: Icon(Icons.done),
                    subtitle: const Text('2023-12-21'),
                  ),
                ),
              ),
              Container(
                width: 350,
                height: 80,
                child: Card(
                  color: const Color(0xFFCDF5FD),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: const Text(
                          'PUNCH IN:\n09:39',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const VerticalDivider(
                        width: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black45,
                      ),
                      Container(
                        child: const Text('PUNCH OUT:\n19:39',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                            textAlign: TextAlign.center),
                      ),
                      const VerticalDivider(
                        width: 20,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                        color: Colors.black45,
                      ),
                      Container(
                        child: const Text('STATUS:\nP',
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 200,
                child: Card(
                  color: const Color(0xFFECF9FF),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: const Center(
                          child: Text(
                            'Mark Attendence',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        child: const Center(
                          child: Text(
                            'Mark Your Attendence using location',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 80,
                                width: 80,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                  color: Colors.greenAccent,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/map.png',
                                      width: 40,
                                      height: 40,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    const Text(
                                      'Check In',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(50.0),
                                  ),
                                  color: Colors.redAccent,
                                ),
                                height: 80,
                                width: 80,
                                child: Column(
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/images/map.png',
                                      width: 40,
                                      height: 40,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                    const Text(
                                      'Check Out',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xFFFFFFFF),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                width: 350,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  color: Color(0xFFEEEEEE),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'August 2023',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.only(top: 10, left: 19),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.lightBlue),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 5,
                              color: Color(0xFFB4D4FF),
                              offset: Offset(1, 3))
                        ],
                        color: Colors.white),
                    child: Expanded(
                        child: Column(
                      children: <Widget>[
                        Image.asset(
                          'assets/images/present.png',
                          width: 50,
                        ),
                        const Text(
                          'Total Present \n 18.00',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.only(top: 10, left: 19),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color(0xFFB4D4FF),
                            offset: Offset(1, 3))
                      ],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue),
                    ),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/absent.png', width: 50),
                          const Text(
                            'Total Absent \n 2.00',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(top: 10, left: 19,bottom: 10),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Color(0xFFB4D4FF),
                            offset: Offset(1, 3))
                      ],
                    ),
                    child: Expanded(
                        child: Column(
                      children: <Widget>[
                        Image.asset('assets/images/calendar.png', width: 50),
                        const Text(
                          'Total \n Leave-WO-Holiday \n 0.00-0.00-0.00',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.only(top: 10, left: 19,bottom: 10),
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
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue),
                    ),
                    child: Expanded(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/images/working.png', width: 50),
                          const Text(
                            'Working Days \n 20',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
                  shadows: <Shadow>[Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)],
                  ),
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
