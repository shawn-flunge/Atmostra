

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
    return date.millisecondsSinceEpoch < (requestAt.millisecondsSinceEpoch + 300000);
  }

  bool _compare(String id){
    return identifier == id && this < DateTime.now();
  }
}

extension CacheListExtension<T> on List<Cache<T>>{

  (bool, int) hasData(String identifier){
    final index = indexWhere((element) => element._compare(identifier));
    if(index == -1) return (false, -1);
    return (true, index);
  }


}