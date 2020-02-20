import 'package:flutter/material.dart';

class ClientDashBoard extends StatelessWidget {
  static bool jobStatus = true;
  static bool _isMapButtonActive = true;
  static bool _isJobsButtonActive = false;
  static bool _isListButtonActive = false;
  static bool _isProfileButtonActive = false;

  @override
  Widget build(BuildContext context) {
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
              child: Text('The Map will appear once you have people in job'),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/clientpostjob');
        },
        child: Icon(Icons.add),
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
                icon: Icon(Icons.pin_drop, color: Colors.black87),
                onPressed: () {
                  Navigator.of(context).pushNamed('/clientdashboard');
                },
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
