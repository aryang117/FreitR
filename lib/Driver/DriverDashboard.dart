import 'package:flutter/material.dart';

class DriverDashboard extends StatelessWidget {
  static bool jobStatus = false;
  static bool _isMapButtonActive = true;
  static bool _isJobsButtonActive = false;
  static bool _isListButtonActive = false;
  static bool _isProfileButtonActive = false;

  @override
  Widget build(BuildContext context) {
    final TextStyle _buttonTextStyle = TextStyle(
        color: Colors.white,
        fontSize: Theme.of(context).textTheme.button.fontSize,
        fontStyle: Theme.of(context).textTheme.button.fontStyle,
        fontWeight: Theme.of(context).textTheme.button.fontWeight,
        fontFamily: Theme.of(context).textTheme.button.fontFamily);
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: jobStatus
          ? Center(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTQxLYY-Q1ehQQNBN96s13uH4EfE6NXarGPlWJQX3Zv6LpZFYkM',
                fit: BoxFit.cover,
              ),
            )
          : Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('The Map will appear once you a job'),
                    FlatButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.of(context).pushNamed('/driverjobsearch');
                      },
                      child: Text(
                        'Browse Jobs',
                        style: _buttonTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/driverjobsearch');
        },
        child: Icon(Icons.search),
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: new BottomAppBar(
        elevation: 8,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              IconButton(
                icon: Icon(Icons.location_on, color: Colors.black87),
                onPressed: () {},
              ),
              // Text("Map"),
            ])),
            Container(
              padding: new EdgeInsets.only(left: 30, right: 50),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.work,
                        color: Colors.grey[500],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/clientjobpage');
                      },
                    ),
                    // Text("Jobs"),
                  ]),
            ),
            Container(
              padding: new EdgeInsets.only(left: 50, right: 30),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.format_list_bulleted,
                        color: Colors.grey[500],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/clientjobhistory');
                      },
                    ),
                    // Text("History"),
                  ]),
            ),
            Container(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.grey[500],
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/clientprofile');
                      },
                    ),
                    // Text("Profile"),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
