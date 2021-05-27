import 'package:dio/dio.dart';
import '../../generated/locale_keys.g.dart';

class DataException implements Exception {
  DataException({required this.message});

  DataException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = LocaleKeys.errorRequestCancelled;
        break;
      case DioErrorType.connectTimeout:
        message = LocaleKeys.errorConnectionTimeout;
        break;
      case DioErrorType.receiveTimeout:
        message = LocaleKeys.errorReceiveTimeout;
        break;
      case DioErrorType.response:
        message = _handleError(dioError.response!.statusCode!);
        break;
      case DioErrorType.sendTimeout:
        message = LocaleKeys.errorSendTimeout;
        break;
      default:
        message = LocaleKeys.errorInternetConnection;
        break;
    }
  }

  String message = "";

  String _handleError(int statusCode) {
    switch (statusCode) {
      case 400:
        return LocaleKeys.errorBadRequest;
      case 404:
        return LocaleKeys.errorRequestNotFound;
      case 500:
        return LocaleKeys.errorIntenalServer;
      default:
        return LocaleKeys.errorSomethingWentWrong;
    }
  }

  @override
  String toString() => message;
}
