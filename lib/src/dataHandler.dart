import 'package:dio/dio.dart';

Dio dio = Dio();
String apiKey = '809babf2a7464816b367538f4c5e1657';
String apiUrl = 'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$apiKey';


class DataHandler {
  Future<Map<String, dynamic>> get _localFile async {
    try {
      Response response = await dio.get(
        apiUrl,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    } catch (e) {
      Response response = await dio.get(
        apiUrl,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status < 500; }
        ),
      );
      return response.data;
    }
  }
  Future<Map<String,dynamic>> getData() async {
    Future<Map<String, dynamic>> data = _localFile;
    return data;
  }
}
