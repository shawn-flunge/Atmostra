

class Cache<T>{
  const Cache({
    required this.requestAt,
    required this.identifier,
    required this.data,
  });

  final DateTime requestAt;
  final String identifier;
  final T data;

  operator <(DateTime date){
    return date.millisecondsSinceEpoch < requestAt.millisecondsSinceEpoch + 300000;
  }

  @override
  bool operator ==(Object other) {
    final o = other as Cache;
    return identifier == o.identifier && this < o.requestAt;
  }
}

extension CacheListExtension on List<Cache>{

  (bool, int) hasData(String identifier){

    final index = indexWhere((element) => element.identifier == identifier);
    if(index == -1) return (false, -1);

    return (true, index);
  }


}