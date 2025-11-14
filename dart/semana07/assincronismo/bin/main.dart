import 'package:http/http.dart';

void main() {
  print('Olá Mundo!');
  requestData();
}

requestData() {
  String url =
      "https://gist.githubusercontent.com/JohonGomes/92b23b266a0f9fccde6ea482742747bb/raw/ce8b8c45845d774bb59eaef674bb19737c309149/gistfile1.txt";
  Future<Response> futureResponse = get(Uri.parse(url));
  futureResponse.then((Response response) {
    print(response);
    print(response.body);
  });
}
