import 'dart:convert';
import 'dart:io';
import 'package:crafty_bay/data/models/api_response.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetxService {
  Future<ApiResponse> getRequest({required String endpoint}) async {
    final Uri uri = Uri.parse(endpoint);
    try {
    final http.Response response = await http.get(uri);
    return _handleResponse(response);
    } on SocketException{
      return ApiResponse(statusCode: -1, isSuccess: false, errorMsg: 'No internet connection');
    }catch (e) {
      return ApiResponse(statusCode: -1, isSuccess: false, errorMsg: 'An unknown error occurred');
    } 
  }

  ApiResponse _handleResponse(http.Response response) {
    if(response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
        if (responseBody['status'] == 'success') {
          return ApiResponse(statusCode: 200, isSuccess: true, jsonData: responseBody);
        } else {
          return ApiResponse(statusCode: 200, isSuccess: false, errorMsg: responseBody['msg']);
        }
    } else if (response.statusCode == 401) {
      return ApiResponse(statusCode: 401, isSuccess: false, errorMsg: 'Unauthorized');
    } else {
      return ApiResponse(statusCode: response.statusCode, isSuccess: false, errorMsg: 'Server error');
    }
  }
}