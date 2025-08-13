import 'dart:io';

import 'package:rick_and_morty_api/app/core/services/log/log.dart';

abstract class AppException implements Exception {
  final String message;

  AppException(this.message) {
    if (Platform.environment.containsKey('FLUTTER_TEST')) return;

    Log.error(message.toString());
  }

  @override
  operator ==(other) {
    return other is AppException && message == other.message;
  }

  @override
  int get hashCode => message.hashCode;
}
