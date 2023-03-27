


import 'package:atmostra/api_key.dart';
import 'package:atmostra/src/data/http_client.dart';


class OpenWeatherApi{

  OpenWeatherApi(){
    _httpClient = AppHttpClient(
        baseUrl: 'https://api.openweathermap.org/data/2.5/',
        apiKey: openWeatherKey
    );
  }

  // todo : set user language
  // final String languageCode;
  late final AppHttpClient _httpClient;

  final List<_Cache> _cache = [];


  getWeatherByName({required String name}){
    _httpClient.get(path: '/weather', queryStrings: ['q=$name']);
  }
}


class _Cache{
  const _Cache({
    required this.requestAt,
    required this.path
  });

  final int requestAt;
  final String path;
}


extension _CacheExt on _Cache{

  operator <(_Cache other){
    return requestAt < other.requestAt + 86400000;
  }
}