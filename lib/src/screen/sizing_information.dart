part of '_screen.dart';

enum DeviceScreenType {
  mobile,
  tablet,
}

class SizingInformation {
  SizingInformation({
    required this.orientation,
    required this.deviceType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  final Orientation orientation;
  final DeviceScreenType deviceType;
  final Size screenSize;
  final Size localWidgetSize;

  @override
  String toString() {
    return '''
Orientation:$orientation DeviceType:$deviceType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize''';
  }
}
