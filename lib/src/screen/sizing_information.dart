// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_screen.dart';

enum DeviceScreenType {
  mobile,
  tablet,
}

class SizingInformation {
  /// Creates a [SizingInformation].
  SizingInformation({
    required this.orientation,
    required this.deviceType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  /// Specify device orientation
  final Orientation orientation;

  /// Specify device type
  final DeviceScreenType deviceType;

  /// Holds screen size info
  final Size screenSize;
  final Size localWidgetSize;

  @override
  String toString() {
    return '''
Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize''';
  }
}
