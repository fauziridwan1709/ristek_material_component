// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_base.dart';

abstract class BaseStateNormal {
  void init();

  PreferredSizeWidget? buildAppBar(BuildContext context);

  Widget buildNarrowLayout(BuildContext context, SizingInformation sizeInfo);

  Widget buildWideLayout(BuildContext context, SizingInformation sizeInfo);

  @protected
  Future<bool> onBackPressed();
}
