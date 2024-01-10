import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:getx_mvvm/data/app_exception.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOUt {
      throw RequestTimeOUt();
    }

    return responseJson;
    // Rest of your code
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data //when data is from raw from
              //body : data (when data is not in raw from) formeddata
              )
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw InternetException();
    } on RequestTimeOUt {
      throw RequestTimeOUt();
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
    // Rest of your code
  }

  dynamic returnResponse(http.Response response) {
    print(response.body.toString());
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
            'Error accoured while communication with server ${response.statusCode}');
    }
  }
}
