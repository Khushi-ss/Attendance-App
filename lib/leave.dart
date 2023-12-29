import 'package:demo/reports.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:intl/intl.dart';

import 'dashBoard.dart';
import 'more.dart';

class leave extends StatefulWidget {
  const leave({super.key});

  @override
  State<leave> createState() => _leaveState();
}

class _leaveState extends State<leave> {
  TextEditingController dateinput = TextEditingController();
  final TextEditingController _dateinput = TextEditingController();
  String dropdownvalue = "Select Option";
  List items = [
    "Select Option",
    "002 Caual Leave",
    "003 Sick Leave",
    "004 Weakend Leave",
    "005 Maternity Leave",
    "01 Annual Leave"
  ];
  String leaveValue = "Select Option";
  List leave_type = [
    "Select Option",
    "Full Day",
    "Three Day",
    "Half Fourth",
    "Quarter"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Leave",
          style: TextStyle(color: Colors.white,fontSize: 18),
        ),
        backgroundColor: const Color(0xFF0802A3),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Leave",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: 400,
                  height: 35,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isDense: true,
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: dropdownvalue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.only(top: 3),
                  child: const Text(
                    "Leave Type",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  width: 400,
                  height: 35,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      items: leave_type
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: leaveValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          leaveValue = newValue!;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Start Date",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 35,
                  // margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: TextField(
                    controller: dateinput,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(Icons.calendar_today,color: Color(0xFF0766AD),),
                      hintText: 'select date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintStyle: const TextStyle(
                          fontSize: 13),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2024),
                      );
                      if (datePicked != null) {
                        print(datePicked);
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(datePicked);
                        print(formattedDate);
                        setState(() {
                          dateinput.text = formattedDate;
                        });
                      }
                    },
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "End Date",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 35,
                  // margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: TextField(
                    controller: _dateinput,
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Icon(Icons.calendar_today,color: Color(0xFF0766AD)),
                      hintText: 'select date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintStyle: const TextStyle(
                          fontSize: 13),
                    ),
                    readOnly: true,
                    onTap: () async {
                      DateTime? datePicked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2024),
                      );
                      if (datePicked != null) {
                        print(datePicked);
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(datePicked);
                        print(formattedDate);
                        setState(() {
                          _dateinput.text = formattedDate;
                        });
                      }
                    },
                  ),
                ),
                Container(
                  child:Row(
                    children: <Widget>[
                      Container(
                  // alignment: Alignment.topLeft,
                  // padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "Reason",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: const Divider(
                              color: Color(0xFFA9A9A9),
                              height: 36,
                            )),
                      ),
                    ],
                ),
                ),

                Container(
                    height: 120,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(16)),
                    // color: Colors.blue,
                    child: const SizedBox(
                      height: 120, // <-- TextField height
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: TextField(
                          maxLines: null,
                          expands: true,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                              hintText: 'Leave Reason',
                            hintStyle: TextStyle(
                                fontSize: 13),
                           ),
                        ),
                      ),
                    )),
                const SizedBox(height: 20),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF14C38E)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Send Leave",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
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
              leading: const Icon(Icons.home,
                  color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[
                    Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)
                  ]),
              title: const Text("Home",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const dashBoard()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.home_work_sharp,
                  color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[
                    Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)
                  ]),
              title: const Text("Leave",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const leave()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.report,
                  color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[
                    Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)
                  ]),
              title: const Text("Report",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const reports()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.more,
                  color: Color(0xFFFFCD4B),
                  shadows: <Shadow>[
                    Shadow(color: Color(0xFF0802A3), blurRadius: 15.0)
                  ]),
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
