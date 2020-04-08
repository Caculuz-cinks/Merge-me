import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.blue[900],
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, "/home");
          },
        ),
      ),
      body: new GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Column(  
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Center(
                child: Text('MergeMe',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 50.0,
                  ),

                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text('Hello!.',
                style: TextStyle(
                  color: Colors.blue[900],
                  fontSize: 60.0,
                  fontWeight: FontWeight.w900,
                ),

              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 35),
                child: Text('E-mail',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Center(
              child: Container(
                width: 350,
                child: TextField(
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your E-mail address',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: Colors.grey[200],

                  ),
                ),
              ),
            ),
            SizedBox(height: 1),
            Flexible(
              child: Padding( 
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Text('Password',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(height: 18),
            Center(
              child: Container(
                width: 350,
                child: TextField(
                  autocorrect: false,
                  obscureText: true,
                  textAlign: TextAlign.start,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.red,
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(16),
                    fillColor: Colors.grey[200],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Flexible(
              child: Padding( 
                padding: const EdgeInsets.only(left:250),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/signup");
                  },
                  child: Text('Forgot Password?',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16.0,
                    ) ,
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
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
            SizedBox(height: 30),
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
