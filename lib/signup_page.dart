import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:form/form_file.dart';

import 'login_page.dart';

class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  final _formKey = GlobalKey<FormState>();
  var selectedOption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('SignUp Page'),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/img.png'),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 45,
                  margin: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person,color: Color(0xFF0766AD)),
                      hintText: 'Enter your name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintStyle: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  margin:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email,color: Color(0xFF0766AD)),
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: const TextStyle(
                            fontSize: 14, fontStyle: FontStyle.italic)),
                  ),
                ),
                Container(
                  height: 45,
                  margin:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone,color: Color(0xFF0766AD)),
                        hintText: 'Enter your mobile',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: const TextStyle(
                            fontSize: 14, fontStyle: FontStyle.italic)),
                  ),
                ),
                Container(
                  height: 45,
                  margin:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: TextField(
                    // keyboardType: TextInputType.number,
                    // maxLength: 10,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.pin_drop,color: Color(0xFF0766AD)),
                        hintText: 'Enter your address',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintStyle: const TextStyle(
                            fontSize: 14, fontStyle: FontStyle.italic)),
                  ),
                ),
                Container(
                  height: 45,
                  margin:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  // padding: EdgeInsets.symmetric(vertical: 5),

                  child: TextField(
                    // keyboardType: TextInputType.number,
                    // maxLength: 6,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.pin,color: Color(0xFF0766AD)),
                      hintText: 'Enter your pincode',
                      // filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      hintStyle: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.only(top: 15.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF14C38E)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const login_page()));
                    },
                    child: const Text('submit',
                    style: TextStyle(color: Colors.white),),
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
