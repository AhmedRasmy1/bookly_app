import 'package:dio/dio.dart';

abstract class Failure {
  final String errmessage;
  Failure({required this.errmessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errmessage});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errmessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errmessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errmessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errmessage: 'Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errmessage: 'Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailure(errmessage: 'Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure(errmessage: 'No internet connection');
        }
        return ServerFailure(errmessage: 'Unexpected error occurred');
      default:
        return ServerFailure(errmessage: 'Something went wrong');
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errmessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errmessage: 'Status code: 404');
    } else if (statusCode == 500) {
      return ServerFailure(errmessage: 'Status code: 500');
    }

    return ServerFailure(errmessage: 'Something went wrong');
  }
}
