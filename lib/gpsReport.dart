import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class gpsReport extends StatefulWidget {
  const gpsReport({super.key});

  @override
  State<gpsReport> createState() => _gpsReportState();
}

class _gpsReportState extends State<gpsReport> {
  TextEditingController dateinput=TextEditingController();
  TextEditingController _dateinput=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("GPS Punch Report",
        style: TextStyle(color: Colors.white,fontSize: 18),),
          backgroundColor: const Color(0xFF0802A3)
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                const SizedBox(height:20),
                Container(
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/images/img.png"),
                  ),
                ),
                const SizedBox(height:10),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "From Date",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 50,
                  // margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: TextField(
                    controller: dateinput,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.calendar_today,color: Color(0xFF0766AD)),
                      hintText: 'Select Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintStyle: const TextStyle(
                          fontSize: 14),
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
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(top: 10),
                  child: const Text(
                    "To Date",
                    style: TextStyle(
                      color: Color(0xFF0802A3),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  height: 50,
                  // margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                  child: TextField(
                    controller: _dateinput,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.calendar_today,color: Color(0xFF0766AD)),
                      hintText: 'select date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintStyle: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
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
                  margin: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF14C38E)),
                    ),
                    onPressed: () {  },
                    child: const Text("GPS Punch Report",style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
