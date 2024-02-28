import 'package:flutter/cupertino.dart';
import 'package:upayza/generated/assets.gen.dart';

class MethodType {
  final String label;
  final Widget iconType;

  MethodType({required this.label, required this.iconType});
}

final methodTypesList = [
  MethodType(
    label: "Mobile - Bank",
    iconType: Assets.icons.mobileCardBank.svg(),
  ),
  MethodType(
    label: "Bank - Bank",
    iconType: Assets.icons.bankCardswap.svg(),
  ),
  MethodType(
    label: "Bank - Mobile",
    iconType: Assets.icons.phoneTablet.svg(),
  ),
  MethodType(
    label: "Mobile - Mobile",
    iconType: Assets.icons.smartPhone.svg(),
  ),
];
