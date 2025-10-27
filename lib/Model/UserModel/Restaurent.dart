class Restaurant {
  final String name;
  final String imageUrl;
  final String cuisine;
  final String distance;
  final double rating;

  Restaurant({
    required this.name,
    required this.imageUrl,
    required this.cuisine,
    required this.distance,
    required this.rating,
  });

  // Create object from a map
  factory Restaurant.fromMap(Map<String, dynamic> map) {
    if (map.isEmpty) {
      throw ArgumentError('Map cannot be empty');
    }
    return Restaurant(
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      cuisine: map['cuisine'] ?? '',
      distance: map['distance'] ?? '',
      rating: (map['rating'] ?? 0).toDouble(),
    );
  }

  // Allow `restaurant['name']` syntax
  dynamic operator [](String key) {
    switch (key) {
      case 'name':
        return name;
      case 'imageUrl':
        return imageUrl;
      case 'cuisine':
        return cuisine;
      case 'distance':
        return distance;
      case 'rating':
        return rating;
      default:
        throw ArgumentError('Invalid property name: $key');
    }
  }

  // Optional (if you ever need to convert back)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'cuisine': cuisine,
      'distance': distance,
      'rating': rating,
    };
  }
}
