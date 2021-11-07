// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_states.dart';

/// An state abstraction.
abstract class FutureState<T, K> {
  String? cacheKey;

  bool getCondition();

  Future<void> retrieveData(K k);
}
