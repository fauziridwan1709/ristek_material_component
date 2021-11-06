// Created by Muhamad Fauzi Ridwan on 22/07/21.

part of '_decorators.dart';

class BoxShapeDecorator {
  BoxShapeDecorator() {
    _shadowDecorator = BoxShadowDecorator();
    _boxDecoration = const BoxDecoration();
  }

  BoxShapeDecorator.withColor(Color color) {
    _shadowDecorator = BoxShadowDecorator();
    _boxDecoration = BoxDecoration(color: color);
  }

  BoxShadowDecorator? _shadowDecorator;
  BoxDecoration? _boxDecoration;

  BoxDecoration defaultDecoration(BuildContext context) {
    return _boxDecoration!.copyWith(
      boxShadow: _shadowDecorator!.defaultShadow(context),
      borderRadius: BorderRadius.circular(12),
    );
  }

  BoxDecoration normalDecoration(BuildContext context) {
    return _boxDecoration!.copyWith(
      boxShadow: _shadowDecorator!.defaultShadow(context),
    );
  }
}
