import 'package:flutter/material.dart';

import 'package:uberfreight/auth.dart';

class DriverSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Future<void> _handleSignIn() async {
    //   try {
    //     await _googleSignIn.signIn();
    //     Navigator.of(context).pushNamed('/driverdashboard');
    //   } catch (error) {
    //     print(error);
    //     Navigator.of(context).pushNamed('/driverdashboard');
    //   }
    // }

    AuthService authService = new AuthService();

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
                  labelText: 'Driver ID',
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
                Navigator.pushNamed(context, '/driverregistration');
              },
              child: Text('Not a member Driver? Sign up!'),
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
                  Navigator.of(context).pushNamed('/driverdashboard');
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
                  authService.signInWithGoogle();
                  Navigator.of(context).pushNamed('/driverdashboard');
                },
                child: Text(
                  'Sign In With Google',
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
