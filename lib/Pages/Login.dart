import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey =
      GlobalKey<FormState>();
  bool _autoValidate = false;

  String _email ;
  String _password ;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: _autoValidate,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              Center(
                child: Text('MergeMe',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 50.0,
                  ),

                ),
              ),
              SizedBox(height: 5),
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
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 20),
                child: Text('E-mail',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(
                    validator: validateEmail,
                    onSaved: (String val) {
                      _email = val;
                    },
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.emailAddress,
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
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: Text('Password',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(
                    validator: validatePassword,
                    onSaved: (String val) {
                      _password = val;
                    },
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
              Padding(
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
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 250.0,
                height: 55.0,
                child: Center(
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(28.0),
                        side: BorderSide(color: Colors.blue[900])
                    ),
                    onPressed: _validateInputs,
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
              SizedBox(height: 10),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 105.0, top: 5.0),
                    child: Text('New to MergeMe?',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 5.0),
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
      ),
    );
  }
  String validatePassword(String value) {
    if (value.length == 0)
      return'Password cannot be Empty';
    if (value.length < 8)
      return'Password must be greater than 8';
    else
      return null;
  }
  String validateEmail(String value) {
    if (value.length == 0)
      return'E-mail cannot be Empty';
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new
    RegExp(pattern);
    if(!regex.hasMatch(value))
      return 'Enter Valid Email';
          else
            return null;
  }
  void _validateInputs() {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      Navigator.pushNamed(context, '/category');
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
