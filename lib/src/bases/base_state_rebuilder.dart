part of '_base.dart';

abstract class BaseStateReBuilder<K extends FutureState<K, dynamic>> {
  void init();

  PreferredSizeWidget? buildAppBar(BuildContext context);

  Widget buildNarrowLayout(BuildContext context, ReactiveModel<K> snapshot,
      SizingInformation sizeInfo);

  Widget buildWideLayout(BuildContext context, ReactiveModel<K> snapshot,
      SizingInformation sizeInfo);

  Future<void> retrieveData();

  @protected
  Future<bool> onBackPressed();
}
