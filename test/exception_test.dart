import 'dart:convert';
import 'dart:io';

import 'package:cryptocurrency_app/constants/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easy_localization/src/localization.dart';
import 'package:easy_localization/src/translations.dart';
import '../lib/generated/locale_keys.g.dart';

void main() {
  setUpAll(() {
    File('assets/translations/en.json').readAsString().then((String contents) {
      Map<String, dynamic> data = jsonDecode(contents);
      Localization.load(Locale('en'), translations: Translations(data));
    });
  });

  test('Create DataException', () {
    final exception =
        DataException(message: LocaleKeys.errorSomethingWentWrong);
    expect(exception.toString(), LocaleKeys.errorSomethingWentWrong);
  });

  test('Exception Dio Cancel', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""), type: DioErrorType.cancel);
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorRequestCancelled);
  });

  test('Exception Connection Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.connectTimeout);
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorConnectionTimeout);
  });

  test('Exception other', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""), type: DioErrorType.other);
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorInternetConnection);
  });

  test('Exception Receive Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.receiveTimeout);
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorReceiveTimeout);
  });

  test('Exception Response 400', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.response,
        response: Response(
            requestOptions: RequestOptions(
              path: "",
            ),
            statusCode: 400));
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorBadRequest);
  });

  test('Exception Response 404', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.response,
        response: Response(
            requestOptions: RequestOptions(
              path: "",
            ),
            statusCode: 404));
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorRequestNotFound);
  });

  test('Exception Response 500', () {
    final error = DioError(
        requestOptions: RequestOptions(path: ""),
        type: DioErrorType.response,
        response: Response(
            requestOptions: RequestOptions(
              path: "",
            ),
            statusCode: 500));
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorIntenalServer);
  });

  test('Exception Send Timeout', () {
    final error = DioError(
        requestOptions: RequestOptions(
          path: "",
        ),
        type: DioErrorType.sendTimeout);
    final exception = DataException.fromDioError(error);
    expect(exception.toString(), LocaleKeys.errorSendTimeout);
  });
}
