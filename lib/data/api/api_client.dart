import 'dart:developer';

import 'package:dio/dio.dart';

class ApiClient {


  static Dio getClient(
    String baseUrl,
  ) {
    return Dio()
      ..options = BaseOptions(
        baseUrl: baseUrl,
       
      )
      ..interceptors.add(LogInterceptor(
        request: false,
        requestHeader: false,
        responseHeader: false,
        responseBody: true,
        requestBody: true,
        logPrint: (value) {
          log(value as String);
        },
      ));
  }
  // final Dio _client;

  // ApiClient(this._client);
  // dynamic get({required String pageNo}) async {
  

  //   var response = await _client.get(ApiConstants.BASE_URL+ApiConstants.CHARACTER_PATH,queryParameters: {
  //         "page": pageNo,
  //       });

  //   if (response.statusCode == 200) {
  //     return json.decode(response.data);
  //   } else {
  //     throw Exception(response.statusMessage);
  //   }
  // }
}
