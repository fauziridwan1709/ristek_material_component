part of '_states.dart';

abstract class FutureState<T, K> {
  String? cacheKey;

  bool getCondition();

  Future<void> retrieveData(K k);
}
