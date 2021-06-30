class User {
  User({
    this.phoneNumber,
    this.email,
    this.name,
    this.uid,
    this.photoUrl,
  });

  String name;
  String email;
  String uid;
  String phoneNumber;
  String photoUrl;

  void _displayEverything() {
    print(phoneNumber);
    print(email);
    print(name);
    print(uid);
    print(photoUrl);
  }

  String returnName() {
    if (name == null) {
      print('name is null');
      return 'hehe';
    }
    else
    {
      print('name is not null');
      return name;
    }
  }
}
