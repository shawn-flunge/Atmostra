

import 'package:atmostra/src/util/mixin/comparable.dart';

class Cache<T> with ComparableMixin{

  Cache({
    required String identifier,
    required this.data,
  }){
    requestAt = DateTime.now();
    this.identifier = identifier;
  }

  final T data;
}

extension CacheListExtension<T> on List<Cache<T>>{

  (bool, int) hasData(String identifier){
    final index = indexWhere((element) => element.compare(identifier));
    if(index == -1) return (false, -1);
    return (true, index);
  }

}