

import 'package:atmostra/src/util/mixin/comparable_mixin.dart';

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
