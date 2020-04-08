import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 60.0),
              child: Text('Welcome',
                style: TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue[900],
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, top: 0.0),
              child: Text('To',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.blue[900],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text('MergeMe',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.blue[900],
                ),
                ),
              ),
            ),
            SizedBox(height: 70.0),
            Center(
              child: Image.asset('assets/mergemelogo.png',
              height: 150,
                width: 150,
              ),
            ),
            SizedBox(height: 70.0),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/login");
              },
              child: ButtonTheme(
                minWidth: 250.0,
                height: 55.0,
                child: Center(
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(28.0),
                      side: BorderSide(color: Colors.blue[900])
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    child: Text('Login',
                      style: TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                      ),

                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 105.0, top: 10.0),
                  child: Text('New to MergeMe?',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text('Register',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ) ,
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}
