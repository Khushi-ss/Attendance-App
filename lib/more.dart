import 'package:demo/login_page.dart';
import 'package:demo/reports.dart';
import 'package:flutter/material.dart';

import 'dashBoard.dart';
import 'leave.dart';

class more extends StatefulWidget {
  const more({super.key});

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "More",
          style: TextStyle(color: Colors.white,fontSize: 18),
        ),
        backgroundColor: const Color(0xFF0802A3),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 15),
            Container(
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/images/img.png"),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("User Profile"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.person,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363),)),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("Change Password"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.key,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363))),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("Refer to your friend"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.drive_file_move,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363))),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("Rate us"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.star,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363))),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("Help/Support"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.support_agent_outlined,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363))),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: const ListTile(
                  title: Text("Privacy Policy"),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -4),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: Icon(Icons.privacy_tip_outlined,color: Color(0xFF0766AD)),
                  trailing: Icon(Icons.arrow_right,color: Color(0xFF213363))),
            ),
            const SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15)),
              child: ListTile(
                  title: const Text("Logout"),
                dense: true,
                visualDensity: const VisualDensity(vertical: -4),
                  onTap: ()=> showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Alert!!!!!',
                  style: TextStyle(color: Colors.red),),
                  content: const Text('Are you sure want to close this app?'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () =>  Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const login_page())),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
                  // isThreeLine:
                  // true, //will fix the alignment if the subtitle text is too big
                  // subtitle: const Text(
                  //     "Flutter demo big ss text here and there to break things everywhere, but still can't break things here"),
                  leading: const Icon(Icons.logout,color: Color(0xFF0766AD)),
                  trailing: const Icon(Icons.arrow_right,color: Color(0xFF213363)),

              ),
            ),
          ],
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
              style: TextStyle(fontWeight: FontWeight.bold),),
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
