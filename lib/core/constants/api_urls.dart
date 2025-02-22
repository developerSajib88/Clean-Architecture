class ApiUrls {
  // Private constructor to prevent instantiation
  ApiUrls._();

  static const String _baseURL = "https://dummyjson.com";

  // Products Endpoints
  static String allProducts = "/products";
  static String searchProducts = "/products/search?q=";

  // Public getter to access the base URL
  static String get baseURL => _baseURL;

}

