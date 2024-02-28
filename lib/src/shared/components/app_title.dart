import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:upayza/src/shared/extensions/app_context_extension.dart';

enum _TextSizeStyle {
  h0,
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
}

class AppTitle extends StatelessWidget {
  const AppTitle({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h3,
        super(key: key);

  const AppTitle.h0({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h0,
        super(key: key);

  const AppTitle.h1({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h1,
        super(key: key);

  const AppTitle.h2({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h2,
        super(key: key);

  const AppTitle.h4({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h4,
        super(key: key);

  const AppTitle.h5({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h5,
        super(key: key);

  const AppTitle.h6({
    Key? key,
    required this.title,
    this.color,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
  })  : _textSizeStyle = _TextSizeStyle.h6,
        super(key: key);

  final String title;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final _TextSizeStyle _textSizeStyle;

  @override
  Widget build(BuildContext context) {
    late TextStyle textStyle;
    switch (_textSizeStyle) {
      case _TextSizeStyle.h6:
        textStyle = context.titleLarge!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h5:
        textStyle = context.headlineSmall!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h4:
        textStyle = context.headlineMedium!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h3:
        textStyle = context.headlineLarge!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h2:
        textStyle = context.displaySmall!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h1:
        textStyle = context.displayMedium!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
      case _TextSizeStyle.h0:
        textStyle = context.displayLarge!.copyWith(
          color: color ?? context.colorScheme.tertiary,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
        break;
    }
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLines ?? 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: textStyle,
    );
  }
}
