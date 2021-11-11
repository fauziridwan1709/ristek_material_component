// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_loading.dart';

/// A spin kit enum.
enum SpinkitType {
  fadingCube,
  pulse,
}

/// A spin kit loading.
class SpinkitLoading extends StatelessWidget {
  /// Creates spin kit loading.
  const SpinkitLoading({
    Key? key,
    this.spinkitType,
    this.color,
  }) : super(key: key);

  final SpinkitType? spinkitType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _mapSpinkitType(spinkitType, context),
    );
  }

  Widget _mapSpinkitType(SpinkitType? type, BuildContext context) {
    final theme = Theme.of(context);
    const size = 40.0;
    const duration = Duration(seconds: 1);
    switch (type) {
      case SpinkitType.pulse:
        return SpinKitPulse(
          size: size,
          color: color ?? theme.colorScheme.primary,
        );
      default:
        return SpinKitFadingCube(
          duration: duration,
          size: size,
          color: color ?? Colors.white,
        );
    }
  }
}
