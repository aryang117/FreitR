import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WebSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height * 0.66,
            width: MediaQuery.of(context).size.width * 0.66,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text(
                //     "Width =  " + MediaQuery.of(context).size.width.toString()),
                _SignIn(),
                _SignIn(),
              ],
            )),
      ),
    );
  }
}

class _SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(50),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10),
        ),
        color: Colors.black,
        onPressed: () {},
        child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Driver' + "→",
                  textAlign: TextAlign.end,
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.headline1.fontSize - 40),
                ),
                Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                 borderRadius: new BorderRadius.circular(10)
              //       shape: RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(5),
              // ),
                  ),
                    // color: Colors.white,
                    child: Icon(
                  Icons.arrow_forward,
                  // color: Colors.white,
                  size: 64,
                ))
              ],
            )),
      ),
    );
  }
}

// class _SignIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: new EdgeInsets.all(20),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Expanded(
//             child: Center(
//               child: Container(
//                 child: Text(
//                   "Please Sign In",
//                   style: Theme.of(context).textTheme.headline2,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             padding: new EdgeInsets.all(10),
//             width: MediaQuery.of(context).size.width * 0.3,
//             child: MaterialButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(5),
//               ),
//               color: Colors.black,
//               height: 65,
//               onPressed: () {
//                 Navigator.of(context).popAndPushNamed('/driversignin');
//               },
//               elevation: 0,
//               child: Text(
//                 "I'm a Driver",
//                 style: TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ),
//           ),
//           Container(
//             padding: new EdgeInsets.all(10),
//             width: MediaQuery.of(context).size.width * 0.3,
//             child: MaterialButton(
//               shape: RoundedRectangleBorder(
//                 borderRadius: new BorderRadius.circular(5),
//               ),
//               color: Colors.black,
//               height: 65,
//               onPressed: () {
//                 Navigator.of(context).popAndPushNamed('/clientsignin');
//               },
//               elevation: 0,
//               child: Text(
//                 "I'm a Client",
//                 style: TextStyle(fontSize: 18, color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
