import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/constants.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: kPrimaryColor,
    // primaryColor는 되지 않음
    scaffoldBackgroundColor: kPrimaryColor,
  );
}
