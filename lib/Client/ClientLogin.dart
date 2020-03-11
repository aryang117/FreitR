import 'package:flutter/material.dart';
import 'ClientDashboard.dart';

import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = new GoogleSignIn();

class ClientSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: new EdgeInsets.all(20),
              child: TextField(
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Client ID',
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.all(20),
              child: TextField(
                autocorrect: false,
                obscureText: true,
                decoration: new InputDecoration(labelText: 'Password'),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clientregistration');
              },
              child: Text('Not a member Client? Sign up!'),
              splashColor: Colors.transparent,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 20,
                height: 50,
                elevation: 0,
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClientDashBoard()));
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: new EdgeInsets.only(top: 20),
              alignment: Alignment.bottomCenter,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 20,
                height: 50,
                elevation: 0,
                color: Colors.black,
                onPressed: () {
                  _handleSignIn();
                },
                child: Text(
                  'Sign in With Google',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _handleSignIn() async {
  try {
    await _googleSignIn.signIn();
  } catch (error) {
    print(error);
  }
}