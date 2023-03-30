
import 'dart:convert';

import 'package:atmostra/src/data/util/http_result.dart';
import 'package:http/http.dart' as http;

typedef FromJsonCallback<T> = T Function(Map<String, dynamic> json);

class AppHttpClient{

  AppHttpClient({
   this.apiKey,
   required this.baseUrl
  });

  final String? apiKey;
  final String baseUrl;


  Future<HttpResult<T>> get<T>({required String path, required List<String> queryStrings, FromJsonCallback<T>? fromJson}) async{
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
        return HttpResult.fail();
      }
      final parsed = json.decode(response.body);
      final T? result = fromJson?.call(parsed);
      return HttpResult.success(result);
    } catch(e, s){
      return HttpResult.fail();
    }
  }


}