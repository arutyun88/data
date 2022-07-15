import 'dart:io';

abstract class AppEnv {
  AppEnv._();

  static final secretKey = _env('SECRET_KEY') ?? 'SECRET_KEY';
  static final port = _env('PORT') ?? '6200';
  static final dbUsername = _env('DB_USERNAME') ?? 'admin';
  static final dbPassword = _env('DB_PASSWORD') ?? 'root';
  static final dbHost = _env('DB_HOST') ?? 'localhost';
  static final dbPort = _env('DB_PORT') ?? '6201';
  static final dbName = _env('DB_NAME') ?? 'postgres';

  static String? _env(String key) => Platform.environment[key];
}
