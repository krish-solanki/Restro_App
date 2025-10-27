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

  // Access data like restaurant['name']
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
}
