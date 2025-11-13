import 'package:crafty_bay/data/models/api_response.dart';
import 'package:crafty_bay/data/models/category_list_model.dart';
import 'package:crafty_bay/data/services/api_client.dart';
import 'package:crafty_bay/data/services/api_endpoints.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class AllCategoryRepo {
  final Logger _logger = Logger();
  final ApiClient _client = Get.find<ApiClient>();

  Future<List<CategoryListModel>> getAllCategory() async {
    final ApiResponse response = await _client.getRequest(
      endpoint: ApiEndpoints.catergoryListUrl,
    );
    if (response.isSuccess) {
      final List<dynamic> catergoryList = response.jsonData['data']['results'];
      _logger.d(catergoryList);
      final List<CategoryListModel> catergoryModel = catergoryList
          .map((jsonData) => CategoryListModel.fromJson(jsonData))
          .toList();
          return catergoryModel;
    }
    return [];
  }
}
