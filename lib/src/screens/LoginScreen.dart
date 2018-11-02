import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreenAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2f96aa),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/presently-logo.png'),
              LoginForm(),
              RaisedButton(
                child: Text("Login"),
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                    "Home", (Route<dynamic> route) => false),
              ),
              RaisedButton(
                child: Text("Register"),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreenIOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFF2f96aa),
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/presently-logo.png'),
                LoginForm(),
                CupertinoButton(
                  color: Colors.white,
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil(
                          "Home", (Route<dynamic> route) => false),
                  child: Text("Sign In"),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                )
              ],
            ),
          )),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                )),
          ],
        ),
      ),
    );
  }
}
