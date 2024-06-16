import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String url;
  NetworkHelper({required this.url});

  Future<dynamic> getData() async {
    Uri uri = Uri.parse(this.url);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = jsonDecode(data);
      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
