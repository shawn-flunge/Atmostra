
import 'package:http/http.dart' as http;


class AppHttpClient{

  AppHttpClient({
   this.apiKey,
   required this.baseUrl
  });

  final String? apiKey;
  final String baseUrl;


  Future<HttpResult<T>> get<T>({required String path, required List<String> queryStrings}) async{
    try{
      var parsedQueryString = queryStrings.fold('?', (previousValue, element){
        if(previousValue == '?') {
          return previousValue + element;
        } else {
          return previousValue + '&' + element;
        }
      });
      if(apiKey != null) parsedQueryString += '&appid=$apiKey';

      final response = await http.get(Uri.parse(baseUrl + path + parsedQueryString),);
      if(response.statusCode != 200){
        return HttpResult<T>(success: false, statusCode: response.statusCode,);
      }
      // todo : parsing result
      return HttpResult<T>(
          success: true,
      );
    } catch(e, s){
      return HttpResult<T>(success: false, message: '🏴‍☠️ Catch the exception at {$path} \n$e\n$s ');
    }
  }


}


class HttpResult<R>{

  HttpResult({
    required this.success,
    this.result,
    this.statusCode,
    this.message,
  });

  bool success;
  R? result;
  int? statusCode;
  String? message;

}
