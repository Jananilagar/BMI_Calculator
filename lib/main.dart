import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Gender(icon: Icons.male, text: "MALE"),
                  Gender(icon: Icons.female, text: "FEMALE"),
                ],
              ),
              // RandomWidget2(text1: "weight", text2: "5'9", text3: "5'6"),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Random(text1: "weight", text2: "140lb"),
                  Random(text1: "age", text2: "18")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Gender extends StatelessWidget {
  final IconData icon;
  final String text;
  const Gender({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 207, 141, 163),
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(icon, color: Colors.white, size: 50),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ]),
      ),
    );
  }
}

class Random extends StatelessWidget {
  final String text1;
  final String text2;
  const Random({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 207, 141, 163),
          borderRadius: BorderRadius.circular(20.0)),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            text1,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Custom(
                icon: Icons.remove_circle,
              ),
              Custom(icon: Icons.add_circle),
            ],
          )
        ]),
      ),
    );
  }
}

class Custom extends StatelessWidget {
  final IconData icon;
  const Custom({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class RandomWidget2 extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  double value;

  RandomWidget2(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      this.value = 0});

  @override
  State<RandomWidget2> createState() => _RandomWidget2State();
}

class _RandomWidget2State extends State<RandomWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 30,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colors.grey),
      child: Column(
        children: [
          Text(
            widget.text1,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            widget.text2,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            widget.text3,
            style: TextStyle(color: Colors.white),
          ),
          Slider(
              inactiveColor: Colors.white,
              activeColor: Colors.white,
              value: widget.value,
              onChanged: (newvalue) {
                setState(() {
                  widget.value = newvalue;
                });
              }),
        ],
      ),
    );
  }
}
