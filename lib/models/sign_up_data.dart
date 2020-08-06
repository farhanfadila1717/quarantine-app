part of 'models.dart';

class SignUpData {
  String name;
  String email;
  String password;
  String cityLive;
  String locationIsolasi;
  String profilePicture;

  SignUpData({
    this.name = "",
    this.email = "",
    this.password = "",
    this.cityLive = "",
    this.locationIsolasi = "",
    this.profilePicture,
  });
}
