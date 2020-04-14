import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  final _formKey =
  GlobalKey<FormState>();
  bool _autoValidate = false;

  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();

  String _email;
  String _password;
  String _confirmpassword;


  @override
  void dispose() {
    _pass.dispose();
    _confirmPass.dispose();
    super.dispose();
  }


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
                child: Text('Register',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),

                ),
              ),

              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(

                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Name',
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

              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(
                    validator: validateEmail,
                      onSaved: (String val) {
                        _email = val ;
                      },
                    autocorrect: false,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'E-mail',
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
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(

                    autocorrect: false,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
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
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(

                    autocorrect: false,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Trade/Work',
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
              SizedBox(height: 10,),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(
                    controller: _pass,
                    validator: validatePassword,
                      onSaved: (String val) {
                        _password = val ;
                      },
                    autocorrect: false,
                    obscureText: true,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Password',
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
              SizedBox(height: 10,),
              Center(
                child: Container(
                  width: 350,
                  child: TextFormField(
                    controller: _confirmPass,
                    validator: validateConfirmPassword,
                      onSaved: (String val) {
                        _confirmpassword = val ;
                      },
                    autocorrect: false,
                    obscureText: true,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Confirm Passowrd',
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
              SizedBox(height: 15),
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
                    child: Text('Signup',
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
                    padding: const EdgeInsets.only(left: 105.0, top: 3.0),
                    child: Text('Already a Member?',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 3.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text('Login',
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

    if (value.length < 8)
      return'Password must be greater than 8';
    else
      return null;
  }
  String validateConfirmPassword(String value) {

    if (value != _pass.text)
      return 'Not Match';
    else
      return null;
  }

  String validateEmail(String value) {
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
      Navigator.pushNamed(context, '/signup');

    } else {
      setState(() {
        _autoValidate = true;
        if (_autoValidate = true){
          showDialog(context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Some Fields are Missing'),
            );
          }
          );
        }
      });
    }
  }
}
