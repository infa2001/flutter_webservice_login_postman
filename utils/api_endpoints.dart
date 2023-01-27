class ApiEndPoints {
  static const String baseUrl =
      'https://chilledcurry-api.azurewebsites.net:443//api/Customer/Login';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String registerEmail = 'authaccount/registration';
  final String loginEmail = 'authaccount/login';
}
