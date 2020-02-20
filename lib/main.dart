import 'package:flutter/material.dart';

import 'Client/ClientDashboard.dart';
import 'Client/ClientJobHistory.dart';
import 'Client/ClientJobPage.dart';
import 'Client/ClientPostJob.dart';
import 'Client/ClientProfile.dart';
import 'Client/ClientRegister.dart';
import 'Client/ClientLogin.dart';

import 'package:uberfreight/Driver/DriverLogin.dart';
import 'package:uberfreight/Driver/DriverRegister.dart';
import 'package:uberfreight/Driver/DriverDashboard.dart';
import 'package:uberfreight/Driver/DriverJobSearch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
