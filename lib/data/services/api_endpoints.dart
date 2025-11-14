class ApiEndpoints {
  static const String _baseUrl = 'https://ecom-rs8e.onrender.com/api';

  // Slide endpoints
  static const String slideListUrl = '$_baseUrl/slides';
  static const String catergoryListUrl = '$_baseUrl/categories';
  static String readCatergory(String id) => '$_baseUrl/categories/$id';
}
