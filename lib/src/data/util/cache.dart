

class Cache<T>{
  const Cache({
    required this.requestAt,
    required this.path,
    required this.data,
  });

  final int requestAt;
  final String path;
  final T data;

  operator <(int mill){
    return mill < requestAt + 5;
  }

  @override
  bool operator ==(Object other) {
    final o = other as Cache;
    return path == o.path && this < o.requestAt;
  }
}

extension CacheListExtension on List<Cache>{

  (bool, int) hasData(String path){

    final index = indexWhere((element) => element.path == path);
    if(index == -1) return (false, -1);

    return (true, index);
  }


}