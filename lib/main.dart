import 'package:flutter/material.dart';
import 'package:new1/customDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
        actions: [
          IconButton(
            onPressed: () {
              print(MediaQuery.of(context).size.height);
            },
            icon: Icon(Icons.send),
          )
        ],
      ),
      drawer: const Drawer(
        child: d2(),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.teal,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                const Divider(
                  thickness: 1.4,
                  color: Colors.red,
                ),
                Container(
                  // width: 200,
                  height: 500,
                  color: Colors.purple,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // width: 200,
                  height: 500,
                  color: Colors.red,
                ),
              ],
            ),
          )
        ],
      ),
      // Container(
      //   width: 200,
      //   height: 300,
      //   color: Colors.teal,
      // ),
      // Divider(
      //   thickness: 5.4,
      //   color: Colors.red,
      // ),
      // Container(
      //   width: 200,
      //   height: 300,
      //   color: Colors.purple,
      // ),
      // SizedBox(
      //   height: 20,
      // ),
      // Container(
      //   width: 200,
      //   height: 300,
      //   color: Colors.red,
      // ),
    );
  }
}

c(int x) {
  print(x);
}
