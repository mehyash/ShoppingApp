import 'package:flutter/material.dart';
import 'package:loginpg/views/mainpage.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController _controller;
  void initState(){
    super.initState();
    _controller=VideoPlayerController.asset('assets/bgvid.mp4')..initialize().then((_){
      _controller.play();
      _controller.setLooping(true);
    });
  }
  void dispose(){
     _controller.dispose();
     super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', 
        style:TextStyle(color: Color(0xFFFFD700)),textAlign:TextAlign.center,),
      backgroundColor: Color(0xFF2A2A2A),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: (){

            }, 
            icon: Image.asset('assets/google_signin.png',width:200)
            ),

            IconButton(onPressed: (){

            }, 
            icon: Image.asset('assets/microsoft_login.png',width:200,)
            ),

            IconButton(onPressed: (){

            },
             icon: Image.asset('assets/apple_signin.png',width: 200,)
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFF1E1E1E),
    );
  }
}
