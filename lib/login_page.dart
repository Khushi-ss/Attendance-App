import 'package:flutter/material.dart';

import 'dashBoard.dart';
class login_page extends StatefulWidget {

  const login_page({super.key});

  @override
  State<login_page> createState() => _loginState();
}

class _loginState extends State<login_page> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Login Page'),
        backgroundColor: Colors.blueAccent,
        titleTextStyle: const TextStyle(color: Colors.white,fontSize: 18),

      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/img.png'),
                ),
                SizedBox(height: 50),
                Container(
                  height: 45,
                  margin: const EdgeInsets.all(10),
                  child:TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person,color: Color(0xFF0766AD)),
                      hintText: 'UserName',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),

                      hintStyle: const TextStyle(fontSize: 14, fontStyle:FontStyle.italic),
                    ),
                  ),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.all(10),
                  child:TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key_sharp,color: Color(0xFF0766AD)),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      ),

                      hintStyle: const TextStyle(fontSize: 14, fontStyle:FontStyle.italic),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(50),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(const Color(0xFF14C38E)),
                    ),
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const dashBoard()));
                    },
                    child: const Text('Login',style: TextStyle(color: Colors.white),),
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
//