// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_decorators.dart';

class BoxShadowDecorator {
  BoxShadowDecorator() {
    shadow = <BoxShadow>[];
  }

  List<BoxShadow>? shadow;

  List<BoxShadow> defaultShadow(BuildContext context) {
    final theme = Theme.of(context);
    shadow!.add(
      BoxShadow(
        color: theme.shadowColor,
        spreadRadius: 2,
        blurRadius: 2,
      ),
    );
    return shadow!;
  }

  List<BoxShadow> neoMorphColor() {
    //todo add to list shadow
    return shadow!;
  }
}
