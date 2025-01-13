class PropertyModel {
  final String title;
  final String imageUrl;
  final String location;
  final double price;
  final int numberOfBeds;
  final int numberOfBathrooms;

  PropertyModel({
    required this.title,
    required this.imageUrl,
    required this.location,
    required this.price,
    required this.numberOfBeds,
    required this.numberOfBathrooms,
  });

  // Factory constructor to create a Product from a map
  factory PropertyModel.fromMap(Map<String, dynamic> map) {
    return PropertyModel(
      title: map['Title'] ?? '',
      imageUrl: map['Image'] ?? '',
      location: map['Location'] ?? '',
      price: map['Price'] != null
          ? (map['Price'] is int
              ? (map['Price'] as int).toDouble()
              : map['Price'] as double)
          : 0.0,
      numberOfBeds:
          map['Number_of_beds'] != null ? (map['Number_of_beds'] is double ? (map['Number of beds'] as double).toInt() : map['Number_of_beds'] as int) : 0,
      numberOfBathrooms: map['Number_of_bathrooms'] != null ? (map['Number_of_bathrooms'] is double ? (map['Number_of_bathrooms'] as double).toInt() : map['Number_of_bathrooms'] as int)
          : 0,
    );
  }
}
