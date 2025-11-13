class SliderImageModel {
  final String id;
  final String photoUrl;
  final String brand;

  SliderImageModel({
    required this.id,
    required this.photoUrl,
    required this.brand,
  });

  factory SliderImageModel.fromJson(Map<String, dynamic> jsonData) {
    return SliderImageModel(
      id: jsonData['_id'] as String,
      photoUrl: jsonData['photo_url'] as String,
      brand: jsonData['brand'] as String,
    );
  }
}
