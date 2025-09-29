import 'package:dio/dio.dart';
import 'package:todo_app/core/env/env.dart';

Dio buildDio() {
  final dio = Dio(BaseOptions(
    baseUrl: Env.apiBaseUrl,
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 30),
    sendTimeout: const Duration(seconds: 30),
    contentType: 'application/json',
  ));

  return dio;
}
