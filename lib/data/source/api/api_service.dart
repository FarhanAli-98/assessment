import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:nomixe/data/source/local/hive_database.dart';
import 'package:nomixe/utils/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'api_config.dart';
import 'api_paths.dart';

enum RequestMethod {
  post,
  get,
  put,
  patch,
  delete,
}

class ApiService {
  static late dio.CancelToken cancelToken;

  static Future<Map<dynamic, dynamic>?> request(String path,
      {required BuildContext context, required RequestMethod method, data, queryParameters}) async {
    Log.i('method: ${describeEnum(method)}');
    Log.i('queryParameters: $queryParameters');
    Log.i('data: $data');
    Log.i('URL: $path');

    try {
      ApiConfig().dio.options.headers[HttpHeaders.authorizationHeader] = HiveDatabase.getValue(HiveDatabase.authToken);
      ApiConfig().dio.options.method = describeEnum(method);
      cancelToken = dio.CancelToken();

      dio.Response response = await ApiConfig().dio.request(
            path,
            data: data,
            queryParameters: queryParameters,
            onSendProgress: (int sent, int total) => debugPrint("SENT: $sent TOTAL: $total"),
            cancelToken: cancelToken,
            options: Options(
                followRedirects: false,
                validateStatus: (status) {
                  return status! < 500;
                },
                headers: {HttpHeaders.acceptHeader: "json/application/json", HttpHeaders.contentTypeHeader: "application/x-www-form-urlencoded"}),
          );

      // log(response.data.toString());
      if (response.statusCode == 200) {
        return response.data;
      } else {
        return response.data;
      }
    } on dio.DioError catch (e) {
      log("$path >>>>> ${e.response}");
      if (e.response?.statusCode != 500) {
        return e.response?.data;
      }
    }

    return null;
  }
}
