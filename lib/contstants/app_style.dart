import 'dart:ui';

import 'package:flutter/material.dart';

import '../configrations/size_config.dart';
import 'app_colors.dart';

class AppStyle {
  static final kTextFormFiledStyle = TextStyle(
      color: AppColors.kPrimaryWhite,
      fontSize: SizeConfig.screenHeight! * 0.029,
      fontWeight: FontWeight.bold);
}
