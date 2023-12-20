import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SpaceHeight {
  static final xs = SizedBox(height: Adaptive.h(2));
  static final sm = SizedBox(height: Adaptive.h(4));
  static final md = SizedBox(height: Adaptive.h(6));
  static final lg = SizedBox(height: Adaptive.h(8));
  static final xl = SizedBox(height: Adaptive.h(12));
  static final xxl = SizedBox(height: Adaptive.h(16));
  static final xxxl = SizedBox(height: Adaptive.h(32));
  static final xxxxl = SizedBox(height: Adaptive.h(48));
}

class SpaceWidth {
  static final xs = SizedBox(width: Adaptive.w(2));
  static final sm = SizedBox(width: Adaptive.w(4));
  static final md = SizedBox(width: Adaptive.w(6));
  static final lg = SizedBox(width: Adaptive.w(8));
  static final xl = SizedBox(width: Adaptive.w(12));
  static final xxl = SizedBox(width: Adaptive.w(16));
  static final xxxl = SizedBox(width: Adaptive.w(32));
  static final xxxxl = SizedBox(width: Adaptive.w(48));
}
