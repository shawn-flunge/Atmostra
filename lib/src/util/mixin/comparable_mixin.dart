
mixin ComparableMixin{

  late final DateTime requestAt;
  late final String identifier;

  operator <(DateTime date){
    return date.millisecondsSinceEpoch < (requestAt.millisecondsSinceEpoch + 300000);
  }

  bool compare(String id){
    return identifier == id && this < DateTime.now();
  }
}
