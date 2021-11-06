// Created by Muhamad Fauzi Ridwan on 04/11/21.

/// A class which holds additional material settings info
class RistekMaterialSettings {
  /// Specify the name of application
  static String? appName;

  static void loadSetting({String? appName}) {
    RistekMaterialSettings.appName = appName;
  }
}
