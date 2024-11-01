import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}
 
class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with Apiserver");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with Apiserver");

      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with Apiserver");

      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate with Apiserver");

      case DioExceptionType.badResponse:
        return ServerFailure.frombadResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure("Cancel with Apiserver");

      case DioExceptionType.connectionError:
        return ServerFailure("No Internet Connection");

      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Connection Error,Please Try again");
        }
        return ServerFailure("Unexpected Error, Please try later");
      default:
        return ServerFailure("Opps There was an Error, Please try later");
    }
  }

  factory ServerFailure.frombadResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure("Your Request not found,please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Inetenal Server Error,Please try Later");
    } else {
      return ServerFailure("Opps There was an Error, Please try later");
    }
  }
}
