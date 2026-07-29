import 'dart:convert';
import 'package:http/http.dart' as http;


class ApiService {

  static const String baseUrl = "https://helloworld-production-c38d.up.railway.app";


  static Future<String> getHello() async {

    final response = await http.get(
      Uri.parse("$baseUrl/api/hello/")
    );


    if (response.statusCode == 200) {

      final data = jsonDecode(response.body);

      return data["message"];

    } else {

      throw Exception("Erreur API");
    }
  }
}
