//  "_id": "6812518cea40bfc6edc67356",
//                 "title": "Apply",
//                 "slug": "apply",
//                 "description": "Apply Device",
//                 "icon": "https://cdn-icons-png.flaticon.com/256/0/747.png",
//                 "parent": null,
//                 "createdAt": "2025-04-30T16:36:28.476Z",
//                 "updatedAt": "2025-04-30T16:36:28.476Z",
//                 "__v": 0

class CategoryListModel {
  final String id;
  final String title;
  final String description;
  final String icon;

  CategoryListModel({
    required this.id,
    required this.title,
    required this.description,
    required this.icon,
  });
  factory CategoryListModel.fromJson(Map<String, dynamic> jsonData) {
    return CategoryListModel(
      id: jsonData['_id'],
      title: jsonData['title'],
      description: jsonData['description'],
      icon: jsonData['icon'],
    );
  }
}
