class UserModal {
  late int id;
  late String name, username, email,phone;
  late Address address;
  late Company company;

  UserModal(
      {required this.id,
      required this.name,
      required this.username,
      required this.email,
      required this.phone,
      required this.address,
      required this.company});

  factory UserModal.fromMap(Map m1) {
    return UserModal(
        id: m1['id'],
        name: m1['name'],
        username: m1['username'],
        email: m1['email'],
        phone: m1['phone'],
        address: Address.from(m1['address']),
        company: Company.fromMap(m1['company']));
  }
}

class Address {
  late String street, city;
  late Geo geo;

  Address({required this.city, required this.street, required this.geo});

  factory Address.from(Map m1) {
    return Address(
      city: m1['city'],
      street: m1['street'],
      geo: Geo.fromMap(m1['geo']),
    );
  }
}

class Geo {
  late String lat, lng;

  Geo({required this.lat, required this.lng});

  factory Geo.fromMap(Map m1) {
    return Geo(lat: m1['lat'], lng: m1['lng']);
  }
}

class Company {
  late String name, catchPhrase;

  Company({required this.name, required this.catchPhrase});

  factory Company.fromMap(Map m1) {
    return Company(name: m1['name'], catchPhrase: m1['catchPhrase']);
  }
}
