import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Mapping lists'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appData = [
      /*
      'Anonymous',
      'Ramesh',
      'Nini',
      'Suresh',
      'Siddhartha',
      'Raaz',
      'Vishal',
      'Moganmbo',
      'Rishi',
      'Vineet,*/
      {'name': 'Anonymous', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Vishal', 'mobileno': '7860******', 'unread': '2'},
      {'name': 'Raaz', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Rahul', 'mobileno': '7860******', 'unread': '3'},
      {'name': 'Rishi', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Abdul', 'mobileno': '7860******', 'unread': '8'},
      {'name': 'Naveen', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Bahadur', 'mobileno': '7860******', 'unread': '1'},
      {'name': 'Aks', 'mobileno': '7860******', 'unread': '6'},
      {'name': 'Nini', 'mobileno': '7860******', 'unread': '6'},
      {'name': 'Prakash bhai', 'mobileno': '7860******', 'unread': '6'},
      {'name': 'Anonymous', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Vishal', 'mobileno': '7860******', 'unread': '2'},
      {'name': 'Raaz', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Rahul', 'mobileno': '7860******', 'unread': '3'},
      {'name': 'Rishi', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Abdul', 'mobileno': '7860******', 'unread': '8'},
      {'name': 'Naveen', 'mobileno': '7860******', 'unread': '5'},
      {'name': 'Bahadur', 'mobileno': '7860******', 'unread': '1'},
      {'name': 'Aks', 'mobileno': '7860******', 'unread': '6'},
      {'name': 'Nini', 'mobileno': '7860******', 'unread': '6'},
      {'name': 'Prakash bhai', 'mobileno': '7860******', 'unread': '6'},
    ];

    return Scaffold(
        backgroundColor: Colors.white,
        // Optional code to change background color *********** //
        appBar: AppBar(
          title: Center(child: Text(widget.title)),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                  children: appData
                      .map((value) =>
                          // ***************** for single value in array ***********//
                          /*Padding(
                      padding: const EdgeInsets.all(8.0,),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade100,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text(value)),
                        ),
                      ),
                    ),*/

                          Column(
                            children: [
                              ListTile(
                                leading: const Icon(
                                  Icons.account_circle_rounded,
                                  color: Colors.blue,
                                ),
                                title: Text(
                                  value['name'].toString(),
                                  style: TextStyle(color: Colors.blue),
                                ),
                                subtitle: Text(value['mobileno'].toString()),
                                trailing: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.blue,
                                    child: Text(value['unread'].toString())),

                              ),
                            ],
                          ))
                      .toList()),

            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Aks',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ],
              ),
            ),

          ],
        ));
  }
}
