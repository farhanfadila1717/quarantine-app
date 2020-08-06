part of 'services.dart';

// NOTE: Mengambil data-data user dari database
class UserServices {
  static CollectionReference _userCollection =
      Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'locationIsolasi': user.locationIsolasi,
      'cityLive': user.cityLive,
      'profilePicture': user.profilePicture ?? "",
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(
      id,
      snapshot.data['email'],
      name: snapshot.data['name'],
      cityLive: snapshot.data['cityLive'],
      locationIsolasi: snapshot.data['locationIsolasi'],
      profilePicture: snapshot.data['profilePicture'],
    );
  }
}
