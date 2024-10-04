class TokenManager {
  static final TokenManager _instance = TokenManager._internal();
  factory TokenManager() => _instance;
  TokenManager._internal();

  String? token;

  void saveToken(String newToken) {
    token = newToken;
  }

  String? getToken() {
    return token;
  }
}

