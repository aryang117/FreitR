import 'package:flutter/material.dart';

import 'dart:io';
import 'package:flutter/foundation.dart';

import 'Client/ClientDashboard.dart';
import 'Client/ClientJobHistory.dart';
import 'Client/ClientJobPage.dart';
import 'Client/ClientPostJob.dart';
import 'Client/ClientProfile.dart';
import 'Client/ClientRegister.dart';
import 'Client/ClientLogin.dart';

import 'Driver/DriverLogin.dart';
import 'Driver/DriverRegister.dart';
import 'Driver/DriverDashboard.dart';
import 'Driver/DriverJobSearch.dart';

import 'webapp/WebSignIn.dart';

void main() {
  if (kIsWeb) runApp(MyWebApp()); //Web Code
  if (Platform.isAndroid) runApp(MyAndroidApp()); //Android Code
}

class MyWebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Colors.blueGrey[50],
        ),
        home: MyWebAppThing());
  }
}

class MyWebAppThing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/clientsignin': (context) => ClientSignIn(),
          '/clientdashboard': (context) => ClientDashBoard(),
          '/clientregistration': (context) => ClientRegistration(),
          '/clientprofile': (context) => ClientProfile(),
          '/clientpostjob': (context) => ClientPostJob(),
          '/clientjobhistory': (context) => ClientJobHistory(),
          '/clientjobpage': (context) => ClientJobPage(),
          '/driversignin': (context) => DriverSignIn(),
          '/driverregistration': (context) => DriverRegistraition(),
          '/driverdashboard': (context) => DriverDashboard(),
          '/driverjobsearch': (context) => DriverJobSearch(),
        },
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Colors.blueGrey[50],
        ),
        home: Scaffold(
          body: WebSignIn(),
        ));
  }
}

class MyAndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/clientsignin': (context) => ClientSignIn(),
        '/clientdashboard': (context) => ClientDashBoard(),
        '/clientregistration': (context) => ClientRegistration(),
        '/clientprofile': (context) => ClientProfile(),
        '/clientpostjob': (context) => ClientPostJob(),
        '/clientjobhistory': (context) => ClientJobHistory(),
        '/clientjobpage': (context) => ClientJobPage(),
        '/driversignin': (context) => DriverSignIn(),
        '/driverregistration': (context) => DriverRegistraition(),
        '/driverdashboard': (context) => DriverDashboard(),
        '/driverjobsearch': (context) => DriverJobSearch(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        backgroundColor: Colors.blueGrey[50],
      ),
      home: SignIn(),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 48,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: new EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5),
              ),
              color: Colors.black,
              height: 65,
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/driversignin');
              },
              elevation: 0,
              child: Text(
                "I'm a Driver",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: new EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5),
              ),
              color: Colors.black,
              height: 65,
              onPressed: () {
                Navigator.of(context).popAndPushNamed('/clientsignin');
              },
              elevation: 0,
              child: Text(
                "I'm a Client",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
