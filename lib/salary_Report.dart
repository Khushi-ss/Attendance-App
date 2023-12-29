import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class salary_Report extends StatefulWidget {
  const salary_Report({super.key});

  @override
  State<salary_Report> createState() => _salary_ReportState();
}

class _salary_ReportState extends State<salary_Report> {
  TextEditingController dateinput=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Salary Report",
        style: TextStyle(color: Colors.white,fontSize: 18),),
          backgroundColor: const Color(0xFF0802A3)
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                margin: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  "Select Month",
                  style: TextStyle(
                    color: Color(0xFF0802A3),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                alignment: Alignment.topLeft,
                height: 50,
                // margin: const EdgeInsets.only(right: 10,left: 10,bottom: 10),
                child: TextField(
                  controller: dateinput,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_today,color: Color(0xFF0766AD)),
                    hintText: 'select month',
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
                margin: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all(const Color(0xFF14C38E)),
                  ),
                  onPressed: () {  },
                  child: const Text("Salary Report",style: TextStyle(color: Colors.white)),
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
                  child: const Text("Pay Slip Report",style: TextStyle(color: Colors.white)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
