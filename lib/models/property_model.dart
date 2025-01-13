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
      title: map['title'] ?? '',
      imageUrl: map['image']?? '',
      location: map['location'] ?? '',
      price: map['price'] != null? map['price'] as double : 0.0,
      numberOfBeds: map['number_of_beds'] != null? map['number_of_beds'] as int : 0,
      numberOfBathrooms: map['number_of_bathrooms'] != null? map['number_of_bathrooms'] as int : 0,
    );
  }
}
