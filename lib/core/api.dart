import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String BASE_URL = "http://192.168.0.119:5000/api/";
const Map<String, dynamic> DEFAULT_HEADER = {
  'Content-Type': 'application/json'
};

class Api {
  final Dio _dio = Dio(); //_dio here _ means private

  Api() {
    _dio.options.baseUrl = BASE_URL;
    _dio.options.headers = DEFAULT_HEADER;
    //Interceptors => like as middleware for any request. work in 2 ways - 1.in request 2. on response
    // add new package pretty_dio_logger which log every request i send through dio,in which i can see whats is sending as request and what i get as response in debug console without call print or anything

    //Interceptor
    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
  }

  // dio is private,To get dio we use this method
  Dio get sendRequest => _dio;
}

class ApiResponse {
  bool success;
  dynamic data;
  String? message;

  ApiResponse({required this.success, this.data, this.message});

  /* In Flutter, a factory constructor is a special type of constructor used to create instances of a class. Unlike regular constructors, which always return a new instance of the class, a factory constructor can return an instance of the class from a cache, an instance of a subclass, or even a completely different class altogether.*/

//factory ApiResponse.fromResponse is a factory constructor that creates an instance of the ApiResponse class based on the data extracted from a Response object.
  factory ApiResponse.fromResponse(Response response) {
    final data = response.data as Map<String, dynamic>;
    return ApiResponse(
        success: data["success"],
        data: data["data"],
        message: data["message"] ?? "Unexpected Error");
  }
}
