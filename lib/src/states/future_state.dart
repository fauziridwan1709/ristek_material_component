part of '_states.dart';

/// An state abstraction.
abstract class FutureState<T, K> {
  String? cacheKey;

  bool getCondition();

  Future<void> retrieveData(K k);
}
