class AppEndpoint {
  AppEndpoint._();

  static const String BASE_URL_DEV = 'dev-api.ppcb.io';
  static const String BASE_URL_PROD = 'api.ppcb.io';

  static const String BASE_URL = 'https://m03v1.wiremockapi.cloud';
  static const String API_KEY = 'O5my8JAR4D5CGVKppScL8KMBhlN_KfVn';
  static const String TEST_POST = '/json';

  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;
  static const String keyAuthorization = 'Authorization';

  static const int SUCCESS = 200;
  static const int UNAUTHORIZED = 401;
  static const int BAD_REQUEST = 400;
  static const int NOT_FOUND = 404;
  static const int FORBIDDEN = 403;
  static const int TOO_MANY_REQUEST = 429;

  static const int ERROR_VALIDATE = 422;
  static const int ERROR_SERVER = 500;
  static const int ERROR_DISCONNECT = -1;

}
