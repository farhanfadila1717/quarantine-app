part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilePicture;
  final String cityLive;
  final String locationIsolasi;

  User(this.id, this.email,
      {this.name, this.profilePicture, this.cityLive, this.locationIsolasi});

  User copyWith({String name, String profilePicture, String locationIsolasi}) =>
      User(
        this.id,
        this.email,
        name: name ?? this.name,
        locationIsolasi: locationIsolasi ?? this.locationIsolasi,
        cityLive: cityLive ?? this.cityLive,
        profilePicture: profilePicture ?? this.profilePicture,
      );

  @override
  String toString() {
    return "[$id] - $name - $email";
  }

  @override
  List<Object> get props => [id, name, profilePicture, locationIsolasi];
}
