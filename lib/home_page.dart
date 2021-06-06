import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Tic Tac Toe",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/tic-tac-toe.png",
                  height: 300,
                  width: 300,
                ),
                SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 300, height: 80),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.person),
                    onPressed: () {
                      Navigator.pushNamed(context, "single");
                    },
                    label: Text(
                      "Single Player",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 300, height: 80),
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.people),
                    onPressed: () {
                      Navigator.pushNamed(context, "multi");
                    },
                    label: Text(
                      "Multi Player",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
