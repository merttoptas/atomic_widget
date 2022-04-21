class User {
  final String id;
  final String email;
  final String password;


  User({required this.id,
    required this.email,
    required this.password,
  });

  static User dummyUser() {
    return User(
        id: '1',
        email: 'merttoptas@gmail.com',
        password: '123456');
  }
}