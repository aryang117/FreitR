import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uberfreight/user.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();

String name;
String email;
String uid;
String phoneNumber;
String photoUrl;

class AuthService {
  Future signInWithGoogle() async {
    try {
      final GoogleSignInAccount googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      final AuthResult authResult =
          await _auth.signInWithCredential(credential);
      final FirebaseUser user = authResult.user;

      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final FirebaseUser currentUser = await _auth.currentUser();
      assert(user.uid == currentUser.uid);
      if (user == null)
        print('not signed in');
      else
        print('signed in' +
            user.uid +
            user.displayName +
            user.email +
            user.photoUrl);

      uid = user.uid;
      name = user.displayName;
      email = user.email;
      phoneNumber = user.phoneNumber;
      photoUrl = user.photoUrl;

      return _firebaseUser(user);

      // return User(user.uid, user.displayName, user.email, user.phoneNumber,
      //         user.photoUrl)
      //     .toString();
    } catch (error) {
      print(error);
    }
    return null;
  }

  Stream<User> get user {
    print('streamer running');
    return _auth.onAuthStateChanged.map(_firebaseUser);
  }

  User _firebaseUser(FirebaseUser user) {
    user != null ? print('user is not null') : print('user is null');
    return user != null
        ? User(
            uid: user.uid,
            phoneNumber: user.phoneNumber,
            email: user.email,
            name: user.displayName,
            photoUrl: user.photoUrl)
        : null;
  }
}
