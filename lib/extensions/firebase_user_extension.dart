part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser {
  User convertToUser({
    String name = "No Name",
    String cityLive = "Kota Depok",
    String locationIsolasi = "-6.355374,106.781973",
  }) =>
      User(this.uid, this.email,
          name: name, cityLive: cityLive, locationIsolasi: locationIsolasi);

  Future<User> fromFireStore() async => await UserServices.getUser(this.uid);
}
