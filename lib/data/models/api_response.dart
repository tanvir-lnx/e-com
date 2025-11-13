class ApiResponse {
  final int statusCode;
  final bool isSuccess;
  final dynamic jsonData;
  final String? errorMsg;

  ApiResponse(
    {
    this.jsonData,
    this.errorMsg, 
    required this.statusCode,
    required this.isSuccess,
  });
}
