
import 'package:atmostra/src/util/mixin/comparable_mixin.dart';

extension ComparableList<T extends ComparableMixin> on List<T>{

  (bool, int) hasData(String identifier){
  final index = indexWhere((element) => element.compare(identifier));
  if(index == -1) return (false, -1);
  return (true, index);
  }
}