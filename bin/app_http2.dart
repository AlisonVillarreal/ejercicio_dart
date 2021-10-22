import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> arguments) {
  final country = "Argentina";
  final url = Uri.parse('https://restcountries.com/v3.1/name/${country}');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);

    for (var i = 0; i < body.length; i++) {
      print('${body[i]['name']['common']}');
    }
  });
}
