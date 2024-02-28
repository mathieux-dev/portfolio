// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:portfolio/shared/theme/border.dart';
import 'package:portfolio/shared/theme/colors.dart';
import 'package:portfolio/shared/theme/shadow.dart';
import 'package:portfolio/shared/theme/spacing.dart';

class CustomCard extends StatelessWidget {
  final Widget? body;
  final Widget? header;
  final Widget? footer;
  final EdgeInsets padding;
  final BoxShadow boxShadow;
  Border? border;
  BorderRadius? borderRadius;

  CustomCard({
    super.key,
    this.body,
    this.header,
    this.footer,
    this.padding = SpacingTheme.inset400,
    this.boxShadow = ShadowTheme.outside200,
    this.border,
  }) {
    border ??= BorderTheme.w100(color: ColorsTheme.neutral400);
    borderRadius = BorderTheme.r100;
  }

  CustomCard.withBorder({
    super.key,
    this.body,
    this.header,
    this.footer,
    this.borderRadius,
    this.padding = SpacingTheme.inset400,
    this.boxShadow = ShadowTheme.outside200,
    this.border,
  }) {
    border ??= BorderTheme.w100(color: ColorsTheme.neutral400);
  }

  @override
  Widget build(BuildContext context) {
    var dividers = getDividers();
    var upperDivider = dividers[0];
    var lowerDivider = dividers[1];

    return Container(
      decoration: BoxDecoration(
          boxShadow: [boxShadow],
          color: Colors.white,
          borderRadius: borderRadius,
          border: border),
      child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          header != null
              ? Padding(
                  padding: padding,
                  child: header,
                )
              : Container(),
          upperDivider,
          body != null
              ? Padding(
                  padding: padding,
                  child: body,
                )
              : Container(),
          lowerDivider,
          footer != null
              ? Padding(
                  padding: padding,
                  child: footer,
                )
              : Container(),
        ],
      ),
    );
  }

  getSectionCount() {
    var count = 0;

    if (header != null) count++;
    if (body != null) count++;
    if (footer != null) count++;

    return count;
  }

  List<Container> getDividers() {
    var sectionCount = getSectionCount();

    if (sectionCount == 2) {
      if (header != null) {
        return [getDivider(), Container()];
      } else {
        return [Container(), getDivider()];
      }
    } else if (sectionCount == 3) {
      return [getDivider(), getDivider()];
    } else {
      return [Container(), Container()];
    }
  }

  Container getDivider() => Container(
        height: 1,
        decoration: const BoxDecoration(color: ColorsTheme.neutral300),
      );
}
