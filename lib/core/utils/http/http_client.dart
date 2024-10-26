// import 'dart:convert';

// import 'package:dio/dio.dart';

// class THttpHelper {
//   static const String _baseUrl = 'https://api.example.com/';

//   static final Dio _dio = Dio(BaseOptions(baseUrl: _baseUrl));

//   static Future<Map<String, dynamic>> get(String endpoint) async {
//     return await _handleResponse(() => _dio.get(endpoint));
//   }

//   static Future<Map<String, dynamic>> post(
//       String endpoint, dynamic data) async {
//     return await _handleResponse(
//       () => _dio.post(endpoint, data: data),
//     );
//   }

//   static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
//     return await _handleResponse(
//       () => _dio.put(endpoint, data: data),
//     );
//   }

//   static Future<Map<String, dynamic>> delete(String endpoint) async {
//     return await _handleResponse(
//       () => _dio.delete(endpoint),
//     );
//   }

//   // static Map<String, dynamic> _handleResponse(Response response) {
//   //   if (case Response(statusCode: var status)) {
//   //     return json.decode(response.body);
//   //   } else {
//   //     throw Exception('Failed to load data: ${response.statusCode}');
//   //   }
//   // }

//   static Future<dynamic> _handleResponse(Function request) async {
//     try {
//       final response = await request();
//       return json.decode(response.data.toString());
//     } on DioException catch (e) {
//       throw Exception('Failed to load data: ${e.message}');
//     }
//   }
// }
