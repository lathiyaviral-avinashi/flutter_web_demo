import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_web_demo/Dashboard.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  LoginScreenState createState() {
    return new LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  LoginScreenState();

  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool isChecked = false;

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: _scaffoldKey,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: new Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      width: (MediaQuery.of(context).size.width / 2) - 50,
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 62.0),
                          Center(
                              child: Text(
                            "Admin Login",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                          SizedBox(height: 30.0),
                          Container(
                            child: TextFormField(
                              controller: username,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  labelText: "User Name",
                                  labelStyle: TextStyle(fontSize: 16.0),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 10.0),
                                  border: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0))),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            child: TextFormField(
                              controller: password,
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(fontSize: 16.0),
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 0.0, 20.0, 10.0),
                                  border: UnderlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0))),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width:
                                    MediaQuery.of(context).size.width / 2 - 80,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DashboardScreen(),
                                      ),
                                    );
                                  },
                                  padding: EdgeInsets.all(12),
                                  color: Theme.of(context).primaryColor,
                                  child: Text('Log In',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value;
                                      });
                                    },
                                  ),
                                  Text("Remember Me")
                                ],
                              ),
                              Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 20, right: 20),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text("Forgot Password ?"),
                                      ],
                                    )))
                            ],
                          ),
                          SizedBox(height: 18.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
