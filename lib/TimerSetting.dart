import 'package:flutter/material.dart';
import 'package:sidebar_tutorial/main.dart';
import 'NavBar.dart';
import 'demo.dart';
import 'variables.dart';

class TimerSetting extends StatefulWidget {
  const TimerSetting({super.key});

  @override
  State<TimerSetting> createState() => _TimerSettingState();
}

class _TimerSettingState extends State<TimerSetting> {
  // int t_sec = 10;
  // _TimerSettingState({this.t_sec});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer settings'),
      ),
      // drawer: NavBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: null,
            ),
          ),
          Card(
            // elevation: 0,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
              // margin: EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(25.0),
              child: Text(
                t_sec.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    t_sec += 10;
                  });
                },
                child: Text('+10'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    t_sec -= 10;
                  });
                },
                child: Text('-10'),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyWidget();
                  },
                ),
              );
            },
            child: Text('Go to demo screen'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go to home screen'),
          ),
        ],
      ),
    );
  }
}
