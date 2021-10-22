import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main(List<String> arguments) {
  final country = "Peru";
  final url = Uri.parse('http://localhost:8181/usuarios');
  http.get(url).then((res) {
    final body = convert.jsonDecode(res.body);

    //print(body.estudiantes);
    for (var i = 0; i < body.length; i++) {
      print('${body[i]['nombre']}');
    }
  });
}
