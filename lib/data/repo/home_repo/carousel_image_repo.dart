import 'package:crafty_bay/data/models/api_response.dart';
import 'package:crafty_bay/data/models/slider_image_model.dart';
import 'package:crafty_bay/data/services/api_client.dart';
import 'package:crafty_bay/data/services/api_endpoints.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

class CarouselImageRepo {
  final Logger logger = Logger();
  final ApiClient client = Get.find<ApiClient>();

  Future<List<SliderImageModel>> getCarouselImage() async {
    final ApiResponse response = await client.getRequest(
      endpoint: ApiEndpoints.slideListUrl,
    );
    if (response.isSuccess) {
      final List<dynamic> carouselImageList = response.jsonData['data']['results'];
      logger.d(carouselImageList);
     
      final List<SliderImageModel> imageModel = carouselImageList
          .map(
            (jsonData) =>
                SliderImageModel.fromJson(jsonData ),
          )
          .toList();
      return imageModel;
    }
    return [];
  }
}
