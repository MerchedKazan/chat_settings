import 'package:chat_settings/features/authentication/bloc/bloc_authentication.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/features/authentication/bloc/token_manager.dart';
import 'package:chat_settings/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiResponse<T> {
  bool success;
  T? data;
  String? errorMessage;
  int? statusCode;

  ApiResponse({required this.success, this.data, this.errorMessage, this.statusCode});

  // Factory method to create an ApiResponse from Dio's Response
  factory ApiResponse.fromResponse(Response response) {
    return ApiResponse(
      success: response.statusCode != null && response.statusCode! >= 200 && response.statusCode! < 300,
      data: response.data,
      statusCode: response.statusCode,
    );
  }

  // Factory method to create an ApiResponse from DioError
  factory ApiResponse.fromError(DioException error) {
    return ApiResponse(
      success: false,
      errorMessage: error.message,
      statusCode: error.response?.statusCode,
    );
  }
}


class CustomInterceptorWrapper extends InterceptorsWrapper{
  // final _secureStorageService= FlutterSecureStorageService();
  // @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
            
          //   final token=await _secureStorageService.getItem(accessToken);
          //   if(token!=null){
          //   options.headers['Authorization']="Bearer $token";
          //   }
          // if(options.extra["includeToken"]==false){
          //   options.headers.remove("Authorization");
          // }
          options.headers["Accept"]= 'application/json';
          options.headers["Content-Type"]= 'application/json';
          if(options.headers['auth']!=null && options.headers['auth']==false){
            options.headers.remove("auth");
          }else{
          options.headers["Authorization"]= 'Bearer ${getIt<TokenManager>().getToken()}';
          }
    super.onRequest(options, handler);
  }
}
 Dio setupDio() {
  Dio dio =  Dio();
  dio.interceptors.add(CustomInterceptorWrapper());
  return dio;
}

class ApiBaseHelper{
  final _dio=setupDio();
 
 Future<ApiResponse> get(String path,{Options? options})async{
    try{
     var response= await _dio.get(path,options: options);
     return _returnResponse(response);
    }catch(e){
      if(e is DioException){
        e.response!=null?_returnResponse(e.response!):_handleDioError(e);
      }
      
    debugPrint("error $e");
    rethrow ;
    }
  }
 Future<ApiResponse> post(String path,dynamic data,{Options? options})async{
    try{
     var response= await _dio.post(path,data: data,options: options);
     return _returnResponse(response);
    }catch(e){
      if(e is DioException){
        e.response!=null?_returnResponse(e.response!):_handleDioError(e);
      }
      
    debugPrint("error $e");
    rethrow ;
    }
  }
 Future<ApiResponse> patch(String path,dynamic data,{Options? options})async{
    try{
     var response= await _dio.patch(path,data: data,options: options);
     return _returnResponse(response);
    }catch(e){
      if(e is DioException){
        e.response!=null?_returnResponse(e.response!):_handleDioError(e);
      }
      
    debugPrint("error $e");
    rethrow ;
    }
  }
 Future<ApiResponse> put(String path,dynamic data,{Options? options})async{
    try{
     var response= await _dio.put(path,data: data,options: options);
     return _returnResponse(response);
    }catch(e){
      if(e is DioException){
        e.response!=null?_returnResponse(e.response!):_handleDioError(e);
      }
      
    debugPrint("error $e");
    rethrow ;
    }
  }
   dynamic _returnResponse(Response response) {
    switch (response.statusCode) {
      case 200:
      case 201:
     return ApiResponse.fromResponse(response);
      case 400:
      case 401:
      case 422:
      throw (response.data["detail"]??response.data["details"]);
      default:
        debugPrint("********* Api Error: ***********");
        debugPrint(response.statusCode.toString());
        debugPrint(response.data.toString());
        throw("Server Error");
         
    }
  }
  static dynamic _handleDioError(DioException e) {
    debugPrint("Dio error: ${e.response}");
    throw Exception(e.message);
  }
}