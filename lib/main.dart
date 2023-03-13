import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'variables.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar'),
      ),
      drawer: NavBar(),
      body: Column(
        children: [
          Center(
            child: Text(
              t_sec.toString(),
              style: const TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  print(t_sec);
                });
              },
              child: Text('Refresh')),
        ],
      ),
    );
  }
}
