///* bu class rest api'a istek atmak için kullanılır.
///* Dio ile istek atılır,
///* ,Bunun amacı bazı parametrelerin önceden verilmesidir.
///* Örneğin her seferinde headers veya base-url vermek yerine bir kez tanımalyıp
///* daha sonrasın bu sınıf üzerinden işlemlere devam etmeliyiz.
///* Böylece uygulama üstündeki hakimiyetimiz artar ve değişikliklere açık olur.
library;

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pixelcraft/core/constants/app_constants.dart';

/// A class that provides a wrapper around the Dio HTTP client library.
///
/// This class provides methods for making HTTP requests such as GET, POST, PUT, PATCH, and DELETE.
/// It also sets up the base URL, headers, timeouts, response type, and interceptors for the Dio client.
class DioClient {
  DioClient() {
    _dio = Dio();

    _dio.options
      ..baseUrl = AppConstants.baseUrl
      ..headers = {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        HttpHeaders.authorizationHeader: 'Bearer ${AppConstants.apiToken}',
      }
      ..connectTimeout = const Duration(milliseconds: 15000)
      ..receiveTimeout = const Duration(milliseconds: 15000)
      ..responseType = ResponseType.json;
  }
  late final Dio _dio;

  /// * GET
  Future<Response<dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * POST
  Future<Response<dynamic>> post(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * PUT
  Future<Response<dynamic>> put(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * PATCH
  Future<Response<dynamic>> patch(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  /// * DELETE
  Future<dynamic> delete(
    String uri, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }
}
