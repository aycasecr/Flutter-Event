import 'package:flutter/material.dart';

import 'border_radius_utils.dart';

class CircularBorderRadius extends BorderRadius {
  CircularBorderRadius({required Sizes radius}) : super.circular(radius.rawValue());

  CircularBorderRadius.zero() : super.circular(Sizes.zero.rawValue());

  CircularBorderRadius.four() : super.circular(Sizes.four.rawValue());
  CircularBorderRadius.six() : super.circular(Sizes.six.rawValue());

  CircularBorderRadius.eight() : super.circular(Sizes.eight.rawValue());

  CircularBorderRadius.ten() : super.circular(Sizes.ten.rawValue());

  CircularBorderRadius.fourTeen() : super.circular(Sizes.fourTeen.rawValue());
  CircularBorderRadius.sixTeen() : super.circular(Sizes.sixTeen.rawValue());

  CircularBorderRadius.circle() : super.circular(Sizes.extraCircle.rawValue());

  CircularBorderRadius.twelve() : super.circular(Sizes.twelwe.rawValue());
}
