import 'package:dipena_full/auth/sign_up.dart';
import 'package:dipena_full/inside_app/navbar.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 217, 66, 4),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 90,
                    child: Image.asset(
                      'assets/images/Logo_Size.png',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 170,
                    left: 45,
                  ),
                  child: Text(
                    'Bergabung bersama yang lainnya!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 230,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 508,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 140,
                            top: 20,
                          ),
                          child: Row(
                            children: <Widget>[
                              Text(
                                'Log In Now!',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Times New Roman',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 40,
                          ),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                  labelText: 'Username',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                            top: 30,
                          ),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                obscureText: _isHidden,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    onPressed: _toggleVisibility,
                                    icon: _isHidden
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 60,
                          ),
                          width: 250,
                          child: RaisedButton(
                            elevation: 5,
                            splashColor: Colors.purpleAccent,
                            padding: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            color: Color.fromRGBO(244, 217, 66, 1),
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            onPressed: () async {
                          var navigationResult = await Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                          if (navigationResult == true) {
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            );
                          }
                        },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            top: 8,
                          ),
                          width: 200,
                          child: FlatButton(
                            padding: EdgeInsets.all(1),
                            color: Colors.white,
                            child: Text(
                              'Doesn\'t have an account?',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                              ),
                            ),
                            onPressed: () async {
                              var navigationResult = await Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                              if (navigationResult == true) {
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                );
                              }
                            },
                          ),
                        ),
                      ],
                    ),
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
