import 'package:flutter/material.dart';
import 'package:untitled1/Screens/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      title: 'Flutter Demo',
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Welcome to\n',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'Plan It',
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 130), // Add space here
            Text(
              'Your Personal task management\nand planning solution',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ListPage()));
                  },
                  child: Text(
                    "Let's Get Started",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white), // Set text color to white
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.grey[800]), // Set background color to dark grey
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 55, vertical: 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
