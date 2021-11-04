// Created by Muhamad Fauzi Ridwan on 04/11/21.

import 'package:flutter/material.dart';

class RistekMaterialSettings {
  static ThemeData _themeData = ThemeData();

  static void loadSetting(ThemeData data) {
    _themeData = data;
  }

  static ThemeData theme = _themeData;
}
