import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  //extends StatefulWidget just means — "this screen has changing data"
  const CounterScreen({super.key});
  //super.key is like an ID card Flutter uses internally

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  
  /*
  State<CounterScreen> createState() => _CounterScreenState();
│                  │ │           │    │                   │
│                  │ │           │    └── Actual state object created
│                  │ └───────────┴─────── function name, returns the state
│                  │
│                  └── <CounterScreen> = "this state belongs to CounterScreen"
└── State = Flutter's built-in class that holds data & builds UI
  */
}

/*
┌─────────────────────────┐
│     CounterScreen       │  ← Just the WRAPPER
│   (StatefulWidget)      │     Doesn't hold data
│                         │     Never changes
└────────────┬────────────┘
             │ createState() 
             │ "go here for data"
             ▼
┌─────────────────────────┐
│  _CounterScreenState    │  ← The BRAIN
│                         │     Holds  count = 0
│                         │     Builds the UI
│                         │     Handles button press
└─────────────────────────┘
*/

/*
CounterScreen               _CounterScreenState

> The widget identity       The widget's memory
> Stays constant            Changes freely
> Lightweight               Holds data + UI
*/

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "$count",
          style: const TextStyle(fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //setState() tells Flutter — "something changed, redraw the screen!"
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}