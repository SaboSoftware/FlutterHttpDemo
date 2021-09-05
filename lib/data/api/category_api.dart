import 'package:http/http.dart' as http;

class CategoryApi {
  static Future getCategorieas() {
  return http.get("http://10.0.2.2:3000/categories");

  }
}