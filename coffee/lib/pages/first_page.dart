import 'package:coffee/const/const.dart';
import 'package:coffee/pages/home_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/espresso.png",
                  width: 150.0,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "The Coffee",
                  style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Have a cup of story?",
                  style: TextStyle(fontSize: 15.0, color: Colors.brown),
                ),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                  height: 50.0,
                  width: 180.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.brown),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => HomePage())));
                    },
                    child: Text(
                      "Enter shop!",
                      style: TextStyle(fontSize: 14.0),
                    ),
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
