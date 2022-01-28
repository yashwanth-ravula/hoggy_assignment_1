import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: [Color(0xff22c1c3), Color(0xff2dfd78)]),
        ),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Headline text',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Colors.white,
                  fontSize: 76,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Lottie.asset(
              'assets/lottiefiles/40912-new-year-loop-background.json',
              width: MediaQuery.of(context).size.width,
              height: 600,
              repeat: true,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: const Alignment(.75, .75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/comb.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/exer.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/wash.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
