import 'package:flutter/material.dart';
import 'package:mergeme/Pages/Home.dart';

class Splash extends StatefulWidget {

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ), () {
        Navigator.pushReplacement(
          context, MaterialPageRoute(
          builder: (context) => Home(),
        )
        );
    }
    );


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90.0, 130.0, 130.0, 130.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/mergemelogo.png'),
                  ) ,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text('MergeMe',
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,

                    ),

                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );

  }
}
