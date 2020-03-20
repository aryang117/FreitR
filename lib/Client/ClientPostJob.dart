import 'package:flutter/material.dart';

// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

class ClientPostJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: new BottomAppBar(
        color: Colors.green,
        child: FlatButton(
          onPressed: () {
            if (_formKey1.currentState.validate()) {
              Navigator.of(context).pushNamed('/driverdashboard');
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('POST')));
            }
          },
          child: new Text(
            'POST',
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(2),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: FlutterLogo(
                    size: 70,
                  ),
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(top: 50),
              ),
              ClientJobForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ClientJobForm extends StatefulWidget {
  @override
  _ClientJobFormState createState() => _ClientJobFormState();
}

class _ClientJobFormState extends State<ClientJobForm> {
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  int _radioValue = 0;

  String _district = 'Sehore';

  final _districts = ['Sehore', 'Bhopal', 'Indore', 'Mumbai', 'Thane'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Form(
        key: _formKey1,
        autovalidate: _autoValidate,
        child: _jobformUI(),
      ),
    );
  }

// Here is our Form UI
  Widget _jobformUI() {
    int selectedMonth;
    int selectedDay;

    return new Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 10, left: 30),
          child: Text(
            'Enter Cargo Details',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30),
          child: new TextFormField(
              decoration: const InputDecoration(labelText: 'Cargo Name'),
              keyboardType: TextInputType.text,
              validator: validateName,
              onSaved: (String val) {
                _name = val;
              }),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30),
          child: new TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Destination Mobile'),
              keyboardType: TextInputType.phone,
              validator: validateMobile,
              onSaved: (String val) {
                _mobile = val;
              }),
        ),

        Container(
          padding: new EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: FlatButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                      side: new BorderSide(color: Colors.black)),
                  child: Text(
                    'Pickup Date',
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // DatePicker.showDateTimePicker(context,
                    //     showTitleActions: true,
                    //     minTime: DateTime.now(),
                    //     maxTime: DateTime(
                    //         DateTime.now().year, DateTime.now().month + 2),
                    //     onChanged: (date) {
                    //   selectedMonth = date.month;
                    //   selectedDay = date.day;
                    //   print(selectedMonth);
                    //   print(selectedDay);
                    // });
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                      side: new BorderSide(color: Colors.black)),
                  child: Text(
                    'Delivery Date',
                    style: new TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    // DatePicker.showDatePicker(context,
                    //     showTitleActions: true,
                    //     minTime: DateTime.now(),
                    //     maxTime: DateTime(
                    //       DateTime.now().year,
                    //       selectedMonth + 2,
                    //       selectedDay,
                    //     ),
                    //     onChanged: (date) {});
                  },
                ),
              ),
            ],
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 10, left: 30),
          child: Text(
            'Cargo Type',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.local_bar,
                    color: Colors.blueGrey[100],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.computer,
                    color: Colors.blueGrey[100],
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  iconSize: 40,
                  icon: Icon(
                    Icons.book,
                    color: Colors.blueGrey[100],
                  ),
                  onPressed: () {},
                ),
                _cargoType(Icon(Icons.fastfood)),
                _cargoType(Icon(Icons.build)),
                _cargoType(Icon(Icons.airport_shuttle)),
                _cargoType(Icon(Icons.airline_seat_individual_suite)),
                _cargoType(Icon(Icons.fastfood)),
                _cargoType(Icon(Icons.fastfood)),
              ],
            ),
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 10, left: 30),
          child: Text(
            'Special Details',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.local_bar,
                  color: Colors.blueGrey[100],
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.error,
                  color: Colors.blueGrey[100],
                ),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.timelapse,
                  color: Colors.blueGrey[100],
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 60, left: 30),
          child: Text(
            'Enter Origin Details',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: TextFormField(
            decoration: new InputDecoration(hintText: 'Address'),
            validator: validateAddress,
          ),
        ),
        DropdownButton(
            items: _districts.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _district = value;
              });
            },
            value: _district),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: 'PinCode'),
            validator: validatePin,
          ),
        ),

        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 60, left: 30),
          child: Text(
            'Enter Destination Details',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: TextFormField(
            decoration: new InputDecoration(hintText: 'Address'),
            validator: validateAddress,
          ),
        ),
        DropdownButton(
            items: _districts.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _district = value;
              });
            },
            value: _district),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: new InputDecoration(hintText: 'PinCode'),
            validator: validatePin,
          ),
        ),

        new SizedBox(
          height: 30.0,
        ),
        // Container(
        //   width: MediaQuery.of(context).size.width,
        //   child: FlatButton(
        //     color: Colors.white,
        //     shape: RoundedRectangleBorder(
        //         borderRadius: new BorderRadius.circular(5),
        //         side: new BorderSide(color: Colors.white)),
        //     child: Text('Register', style: TextStyle(color: Colors.white)),
        //     padding: EdgeInsets.symmetric(horizontal: 10),
        //     onPressed: null,
        //     // onPressed: () {
        //     //   if (validateInputs()) {
        //     //     Navigator.of(context).pushNamed('/dashboard');
        //     //     Scaffold.of(context)
        //     //         .showSnackBar(SnackBar(content: Text('Registered')));
        //     //   }
        //     // },
        //   ),
        // ),
      ],
    );
  }

  bool validateInputs() {
    if (_formKey1.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey1.currentState.save();

      return true;
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });

      return false;
    }
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }

  String validateMobile(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length != 10)
      return 'Mobile Number must be of 10 digit';
    else
      return null;
  }

  String validateAddress(String value) {
    if (value.length < 1)
      return 'Address cannot be empty';
    else
      return null;
  }

  String validatePin(String value) {
// Indian Mobile number are of 10 digit only
    if (value.length == 0)
      return 'Pin Code cannot be empty';
    else
      return null;
  }
}

Widget _cargoType(Icon icon) {
  return IconButton(
    iconSize: 40,
    icon: icon,
    color: Colors.blueGrey[100],
    onPressed: () {},
  );
}
