// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:csit4thsemnotes/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      "assets/icons/nike_animation.mp4",
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    //add delay till video is complite
    await Future.delayed(const Duration(seconds: 4));

    // navigating to home screen
    Navigator.pushNamed(context, '/');
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(
                  _controller,
                ),
              )
            : Container(),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(246, 0, 0, 0),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 0,
              ),
              Center(
                  child: Image.asset(
                "assets/icons/image.png",
                height: 390,
              )),
              SizedBox(height: 25),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Hello User !",
                    style: TextStyle(
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              SizedBox(
                height: 15,
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Text(
                    "Do you feel confident on your academics ? This is the platform that includes notes and many other stuffs.",
                    style: TextStyle(
                        fontSize: 17,
                        color:
                            Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
                        fontWeight: FontWeight.bold)),
              )),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: Container(
                  height: 55,
                  width: 320,
                  child: Center(
                      child: Text(
                    "Think and Learn Faster",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 243, 109),
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  });
                },
                child: Container(
                  height: 55,
                  width: 320,
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 106, 255), fontSize: 22),
                  )),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text("Developed by: Aman Sapkota ©",
                  style: TextStyle(
                      fontSize: 11, color: Colors.white.withOpacity(0.6))),
            ],
          ),
        ));
  }
}
