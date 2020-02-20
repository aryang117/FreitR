import 'dart:math';
import 'dart:core';

import 'package:flutter/material.dart';

class ClientData {
  ClientData(
      {this.name,
      this.origin,
      this.destination,
      this.deliverydate,
      this.isdelivered,
      this.isbidding,
      this.status,
      this.destmobile,
      this.icon});
  final String name, origin, destination, destmobile;
  final List<String> deliverydate;
  final bool isdelivered;
  final Icon icon;
  final Text status;
  final Text isbidding;
}

List<ClientData> data = <ClientData>[
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
  ClientData(
    name: 'Computer Parts',
    isdelivered: _isDeliveredRandgen(),
    isbidding: _isBidding(),
    origin: 'Sehore',
    destination: 'Bhopal',
    deliverydate: [
      _deliveryDateRandgen(DateTime.now().day, 'day').toString(),
      _deliveryDateRandgen(DateTime.now().month, 'month').toString(),
      _deliveryDateRandgen(DateTime.now().year, 'year').toString(),
    ],
    destmobile: '9865458445',
    icon: _splIcon(),
    status: _status(),
  ),
];

bool _isDeliveredRandgen() {
  bool isDeliveredtruefalse;
  Random r = new Random();
  isDeliveredtruefalse = r.nextBool();
  print(isDeliveredtruefalse);

  return isDeliveredtruefalse;
}

int _deliveryDateRandgen(int limit, String type) {
  Random random = new Random();
  if (type == 'day') {
    limit = 30;
    return (random.nextInt(limit) + 1);
  } else if (type == 'month') {
    limit = 11;
    return (random.nextInt(limit) + 1);
  } else {
    limit = 2;
    return (random.nextInt(2) + DateTime.now().year - 2);
  }
}

Widget _splIcon() {
  Random random = new Random();

  int selectIcon;
  selectIcon = random.nextInt(4);

  List<Icon> icon = [
    Icon(
      Icons.local_bar,
      color: Colors.yellow[700],
    ),
    Icon(
      Icons.error,
      color: Colors.red,
    ),
    Icon(
      Icons.timer,
      color: Colors.black,
    ),
    Icon(null),
  ];

  return icon[selectIcon];
}

Widget _status() {
  Random random = new Random.secure();

  TextStyle notPickedUp = new TextStyle(color: Colors.red);
  TextStyle pickedUp = new TextStyle(color: Colors.blueAccent);
  TextStyle inTransit = new TextStyle(color: Colors.orange);
  TextStyle delivered = new TextStyle(color: Colors.green);

  int selectStatus;
  selectStatus = random.nextInt(4);

  List<Text> status = [
    Text(
      'NOT PICKED UP',
      style: notPickedUp,
    ),
    Text(
      'PICKED UP',
      style: pickedUp,
    ),
    Text(
      'IN TRANSIT',
      style: inTransit,
    ),
    Text(
      'DELIVERED',
      style: delivered,
    ),
  ];

  return status[selectStatus];
}

Widget _isBidding() {
  bool isBiddingtruefalse;
  void _isBidding() {
    Random r = new Random();
    isBiddingtruefalse = r.nextBool();
    print(isBiddingtruefalse);
  }

  _isBidding();
  return Text(
    'BIDS :  ' + (isBiddingtruefalse ? 'OPEN' : 'CLOSED').toString(),
    style: new TextStyle(color: isBiddingtruefalse ? Colors.green : Colors.red),
  );
}
