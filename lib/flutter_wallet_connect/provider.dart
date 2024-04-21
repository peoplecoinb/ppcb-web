part of 'flutter_wallet_connect.dart';

@JS()
@anonymous
class Provider {
  external Future<T> request<T>(RequestArguments args);
  external void on<T>(String event, void Function(T data) listener);
  external void removeListener<T>(String event, void Function(T data) listener);
  external void emit(String event);
}

@JS()
@anonymous
class RequestArguments {

  external factory RequestArguments({
    required String? method,
    dynamic params,
  });

  external String? get method;
  external dynamic get params;
}
