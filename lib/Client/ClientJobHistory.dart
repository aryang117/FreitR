import 'package:flutter/material.dart';
import 'dart:math';
import 'Data/ClientData.dart';

class ClientJobHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: new Text(
          'Job History',
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: new IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: List.generate(
                  randomgen(),
                  (index) {
                    return _JobHistory(
                      name: data[index].name,
                      origin: data[index].origin,
                      destination: data[index].destination,
                      destmobile: data[index].destmobile,
                      deliverydate: data[index].deliverydate,
                      isdelivered: data[index].isdelivered,
                      icon: data[index].icon,
                    );
                    //return Text('sjf');
                  },
                ),
              ),
            ),
            Container(
              height: 20,
              color: Theme.of(context).backgroundColor,
            ),
          ],
        ),
      ),
    );
  }
}

var v;
int i;
int randomgen() {
  v = new Random();
  int i = v.nextInt(12);
  if (i < 10) {
    randomgen();
  }
  print(i);
  return i;
}

class _JobHistory extends StatelessWidget {
  _JobHistory(
      {this.name,
      this.isdelivered,
      this.origin,
      this.destination,
      this.deliverydate,
      this.destmobile,
      this.icon,
      Key key})
      : super(key: key);

  final String name, origin, destination, destmobile;
  final List<String> deliverydate;
  final bool isdelivered;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.left,
                ),
                IconButton(
                  icon: icon,
                  onPressed: () {},
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Text(
                origin,
                style: Theme.of(context).textTheme.button,
              ),
              Icon(Icons.arrow_forward),
              Text(
                destination,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Container(
                padding: new EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: <Widget>[
                    Text(
                      deliverydate[0] +
                          ' / ' +
                          deliverydate[1] +
                          ' / ' +
                          deliverydate[2],
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: new EdgeInsets.all(5),
            margin: new EdgeInsets.symmetric(vertical: 5),
            decoration: new BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: new BorderRadius.circular(2),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'STATUS :  ',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  isdelivered ? 'DELIVERED' : 'NOT DELIVERED',
                  style: new TextStyle(
                      color: isdelivered ? Colors.green : Colors.red),
                ),
              ],
            ),
          ),
          Container(
            height: 20,
          ),
        ],
      ),
    );
  }
}
