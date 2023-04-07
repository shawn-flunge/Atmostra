


import 'package:atmostra/api_key.dart';
import 'package:atmostra/src/data/dto/weather_dto.dart';
import 'package:atmostra/src/data/util/http_client.dart';
import 'package:atmostra/src/data/util/cache.dart';
import 'package:atmostra/src/util/extension/comparable_list.dart';


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

  final List<Cache<WeatherDto>> _cache = [];

  Future<WeatherDto?> getWeatherByName({required String name}) async{

    final hasData = _cache.hasData(name);
    if(hasData.$0 == true){
      return _cache[hasData.$1].data;
    }

    final result = await _httpClient.get(path: '/weather', queryStrings: ['q=$name'], fromJson: WeatherDto.fromJson);
    if(!result.success) return null;
    _cache.add(Cache(identifier: name, data: result.data!));
    return result.data!;
  }
}