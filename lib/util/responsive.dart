import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 700;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700 &&
      MediaQuery.sizeOf(context).width <= 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.sizeOf(context).width > 1100;
}

double getPadding(context) {
  return getScreenWidth(context) / 18;
}

double getScreenWidth(context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(context) {
  return MediaQuery.sizeOf(context).height;
}

double getHalfWidth(context) {
  return Responsive.isDesktop(context)
      ? getScreenWidth(context) * 7.5 / 18
      : getScreenWidth(context);
}

double getThirdWidth(context) {
  return Responsive.isDesktop(context)
      ? getScreenWidth(context) * 5 / 18
      : getScreenWidth(context);
}

double getQuadWidth(context) {
  return Responsive.isDesktop(context)
      ? getScreenWidth(context) * 3.7 / 18
      : Responsive.isTablet(context)
      ? getScreenWidth(context) * 7.5 / 18
      : getScreenWidth(context);
}
