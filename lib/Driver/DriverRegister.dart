import 'package:flutter/material.dart';

// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class DriverRegistraition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: new BottomAppBar(
        color: Colors.green,
        child: FlatButton(
          onPressed: () {
            if (/*_formKey.currentState.validate()*/ true) {
              Navigator.of(context).pushNamed('/driverdashboard');
              Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text('Registered')));
            }
          },
          child: new Text(
            'REGISTER',
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: new EdgeInsets.only(top: 80),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: FlutterLogo(
                    size: 70,
                  ),
                ),
              ),
              Padding(
                padding: new EdgeInsets.only(top: 50),
              ),
              RegistrationForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;
  int _radioValue = 0;
  String _company;
  String _model;
  String _license;

  String _district = 'Sehore';

  final _districts = ['Sehore', 'Bhopal', 'Indore', 'Mumbai', 'Thane'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: new Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: formUI(),
      ),
    );
  }

// Here is our Form UI
  Widget formUI() {
    return new Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          margin: new EdgeInsets.only(top: 10, left: 30),
          child: Text(
            'Enter Personal Details',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              keyboardType: TextInputType.text,
              validator: validateName,
              onSaved: (String val) {
                _name = val;
              }),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
              decoration: const InputDecoration(labelText: 'Mobile'),
              keyboardType: TextInputType.phone,
              validator: validateMobile,
              onSaved: (String val) {
                _mobile = val;
              }),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
            validator: validateEmail,
            onSaved: (String val) {
              _email = val;
            },
          ),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: FlatButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(5),
                side: new BorderSide(color: Colors.black)),
            child: Text(
              'Date Of Birth',
              style: new TextStyle(color: Colors.white),
            ),
            onPressed: () {
              // DatePicker.showDatePicker(context,
              //     showTitleActions: true,
              //     minTime: DateTime(1920, 01, 01),
              //     maxTime: DateTime.now(),
              //     onChanged: (date) {});
            },
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: TextFormField(
            decoration: new InputDecoration(hintText: 'Nationality'),
          ),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: Row(children: <Widget>[
            new Text('Gender:'),
            SizedBox(
              width: 20,
            ),
            new Radio(
              value: 0,
              onChanged: _handleRadioValueChange,
              groupValue: _radioValue,
              activeColor: Colors.black,
            ),
            Text('Male'),
            SizedBox(
              width: 80,
            ),
            new Radio(
              value: 1,
              groupValue: _radioValue,
              onChanged: _handleRadioValueChange,
              activeColor: Colors.black,
            ),
            Text('Female'),
          ]),
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
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
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
            'Enter Truck Details',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),

        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
              decoration: const InputDecoration(labelText: 'Truck Company'),
              keyboardType: TextInputType.text,
              validator: validateCompany,
              onSaved: (String val) {
                _company = val;
              }),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
              decoration: const InputDecoration(labelText: 'Truck Model'),
              keyboardType: TextInputType.text,
              validator: validateMobile,
              onSaved: (String val) {
                _model = val;
              }),
        ),
        Container(
          padding: new EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          child: new TextFormField(
              decoration:
                  const InputDecoration(labelText: 'License Plate Number'),
              keyboardType: TextInputType.text,
              validator: validateLicense,
              onSaved: (String val) {
                _license = val;
              }),
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

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
  }

  bool validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();

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

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
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

  String validateCompany(String value) {
    if (value.length < 1)
      return 'Truck Company cannot be empty';
    else
      return null;
  }

  String validateModel(String value) {
    if (value.length < 1)
      return 'Truck Model cannot be empty';
    else
      return null;
  }

  String validateLicense(String value) {
    if (value.length < 1)
      return 'Pin Code cannot be empty';
    else
      return null;
  }
}
