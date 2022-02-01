import 'package:flutter/material.dart';

enum PaddingValue {
  defaultPadding,

  pagePadding,
  smallPadding,
  mediumPadding,
  inputPadding,
  textFormFieldPadding,
  searchTextFormFieldPadding,
  webPagePadding,
  tablePadding,
  mobilePagePadding,
  cardContentVerticalPadding,
  cardContentHorizontalPadding,
  cardLineBottomPadding,
  cardLineTopPadding,
  cardLineLeftPadding,
  transactionIconPadding,
  leadingIconPadding,
  middlePadding,
  fifteen,
  topBottomEight,
  rightPadding,
  tablelastElementPadding,
  headerBottomPadding,
  tabBarPadding,
  allSixPadding,
  iconPadding,
  allTwoPadding,
  bottomSixteen,
  leftRightZero,
  topTwenty
}

extension PaddingValueExtensin on PaddingValue {
  EdgeInsetsGeometry get rawValue {
    switch (this) {
      case PaddingValue.pagePadding:
        return const EdgeInsets.only(left: 50.0, right: 50.0);
      case PaddingValue.inputPadding:
        return const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0);
      case PaddingValue.textFormFieldPadding:
        return const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0);
      case PaddingValue.searchTextFormFieldPadding:
        return const EdgeInsets.only(top: 10.0, left: 10.0);
      case PaddingValue.webPagePadding:
        return const EdgeInsets.only(left: 90.0, right: 90);
      case PaddingValue.tablePadding:
        return const EdgeInsets.all(8.0);
      case PaddingValue.allSixPadding:
        return const EdgeInsets.all(6.0);
      case PaddingValue.allTwoPadding:
        return const EdgeInsets.all(2.0);
      case PaddingValue.mobilePagePadding:
        return const EdgeInsets.all(15.0);
      case PaddingValue.cardContentVerticalPadding:
        return const EdgeInsets.symmetric(vertical: 7.0);
      case PaddingValue.cardContentHorizontalPadding:
        return const EdgeInsets.symmetric(horizontal: 20.0);
      case PaddingValue.cardLineBottomPadding:
        return const EdgeInsets.only(bottom: 8.0);
      case PaddingValue.cardLineTopPadding:
        return const EdgeInsets.only(top: 8.0);
      case PaddingValue.cardLineLeftPadding:
        return const EdgeInsets.only(left: 8.0);
      case PaddingValue.transactionIconPadding:
        return const EdgeInsets.only(left: 30.0);
      case PaddingValue.leadingIconPadding:
        return const EdgeInsets.only(left: 20.0);
      case PaddingValue.iconPadding:
        return const EdgeInsets.only(left: 6.0, right: 6.0);
      case PaddingValue.middlePadding:
        return const EdgeInsets.only(left: 20.0, right: 7.0);
      case PaddingValue.fifteen:
        return const EdgeInsets.only(top: 15, bottom: 15);
      case PaddingValue.rightPadding:
        return const EdgeInsets.only(right: 8.0);
      case PaddingValue.tablelastElementPadding:
        return const EdgeInsets.only(left: 20.0, right: 20);
      case PaddingValue.headerBottomPadding:
        return const EdgeInsets.only(bottom: 10);
      case PaddingValue.bottomSixteen:
        return const EdgeInsets.only(bottom: 16);
      case PaddingValue.tabBarPadding:
        return const EdgeInsets.only(bottom: 10, left: 20, right: 20);
      case PaddingValue.topBottomEight:
        return const EdgeInsets.only(top: 8, bottom: 8);
      case PaddingValue.leftRightZero:
        return const EdgeInsets.only(right: 0, left: 0);
      case PaddingValue.topTwenty:
        return const EdgeInsets.only(top: 20);
      case PaddingValue.defaultPadding:
        return const EdgeInsets.all(80.0);
      case PaddingValue.mediumPadding:
        return const EdgeInsets.only(left: 120.0, right: 120.0);
      case PaddingValue.smallPadding:
        return const EdgeInsets.only(left: 40.0, right: 40.0);
    }
  }
}
