import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorStyles {
  //primary
  //#FFFFFF
  static Color backgroundColor = const Color(0xffFFFFFF);
  static Color primarySurfaceColor = const Color(0xffF9F9F9);
  static Color primarySurfaceColorForShimmer = const Color(0xb8f9f9f9);
  static Color primarySurfaceHoverColor = const Color(0xff767676);
  static Color primaryBorderColor = const Color(0xff3D3DD8);
  static Color primaryBorderHoverColor = const Color(0xFF0243EC);
  static Color primaryShapeColor = const Color(0xFF0243EC);
  static Color primaryShapeHoverColor = const Color(0xFF002583);
  static Color primaryShapeActiveColor = const Color(0xFF001753);
  static Color primaryTextColor = const Color(0xFF002583);
  static Color primaryTextHoverColor = const Color(0xFF001753);
  static Color primaryTextActiveColor = const Color(0xFF000B27);
  //success
  static Color successSurfaceColor = const Color(0xFFD8F7E6);
  static Color successSurfaceHoverColor = const Color(0xFFA4E8C2);
  static Color successBorderColor = const Color(0xFF1E9850);
  static Color successBorderHoverColor = const Color(0xFF0D823C);
  static Color successShapeColor = const Color(0xFF0D823C);
  static Color successShapeHoverColor = const Color(0xFF00692A);
  static Color successShapeActiveColor = const Color(0xFF005122);
  static Color successTextColor = const Color(0xFF00692A);
  static Color successTextHoverColor = const Color(0xFF005122);
  static Color successTextActiveColor = const Color(0xFF001C0D);
  //warning
  static Color warningSurfaceColor = const Color(0xFFFFEFE4);
  static Color warningSurfaceHoverColor = const Color(0xFFFFCEAE);
  static Color warningBorderColor = const Color(0xFFFF7A2A);
  static Color warningBorderHoverColor = const Color(0xFFFA5C00);
  static Color warningShapeColor = const Color(0xFFFA5C00);
  static Color warningShapeHoverColor = const Color(0xFFEE5800);
  static Color warningShapeActiveColor = const Color(0xFFC74900);
  static Color warningTextColor = const Color(0xFFEE5800);
  static Color warningTextHoverColor = const Color(0xFFC74900);
  static Color warningTextActiveColor = const Color(0xFFA43C00);

  // //
  // static Color SurfaceColor = const Color(0xFF);
  // static Color SurfaceHoverColor = const Color(0xFF);
  // static Color BorderColor = const Color(0xFF);
  // static Color BorderHoverColor = const Color(0xFF);
  // static Color ShapeColor = const Color(0xFF);
  // static Color ShapeHoverColor = const Color(0xFF);
  // static Color ShapeActiveColor = const Color(0xFF);
  // static Color TextColor = const Color(0xFF);
  // static Color TextHoverColor = const Color(0xFF);
  // static Color TextActiveColor = const Color(0xFF);
  //error
  static Color errorSurfaceColor = const Color(0xFFFFE5E8);
  static Color errorSurfaceHoverColor = const Color(0xFFFFB1B9);
  static Color errorBorderColor = const Color(0xFFE71D36);
  static Color errorBorderHoverColor = const Color(0xFFE8132A);
  static Color errorShapeColor = const Color(0xFFE71D36);
  static Color errorShapeHoverColor = const Color(0xFFD20319);
  static Color errorShapeActiveColor = const Color(0xFF9C0010);
  static Color errorTextColor = const Color(0xFFD20319);
  static Color errorTextHoverColor = const Color(0xFF9C0010);
  static Color errorTextActiveColor = const Color(0xFF72000C);
  //info
  static Color infoSurfaceColor = const Color(0xFFE8F1FF);
  static Color infoSurfaceHoverColor = const Color(0xFFD3F8F4);
  static Color infoBorderColor = const Color(0xFF1C6BFF);
  static Color infoBorderHoverColor = const Color(0xFF1062FF);
  static Color infoShapeColor = const Color(0xFF1062FF);
  static Color infoShapeHoverColor = const Color(0xFF0250EC);
  static Color infoShapeActiveColor = const Color(0xFF0046D3);
  static Color infoTextColor = const Color(0xFF0250EC);
  static Color infoTextHoverColor = const Color(0xFF0046D3);
  static Color infoTextActiveColor = const Color(0xFF003AAD);
  //HUE246
  static Color hue246SurfaceColor = const Color(0xFFEEEDFF);
  static Color hue246SurfaceHoverColor = const Color(0xffD5D7F6);
  static Color hue246BorderColor = const Color(0xFF6F5CDC);
  static Color hue246BorderHoverColor = const Color(0xFF4B35B5);
  static Color hue246ShapeColor = const Color(0xFF4B35B5);
  static Color hue246ShapeHoverColor = const Color(0xFF392494);
  static Color hue246ShapeActiveColor = const Color(0xFF2A1770);
  static Color hue246TextColor = const Color(0xFF392494);

  static Color hue246TextHoverColor = const Color(0xFF2A1770);
  static Color hue246TextActiveColor = const Color(0xFF100740);
  //neutrals
  static Color neutralsPageBackgroundColor = const Color(0xFFFBFBFD);
  static Color neutralsComponent1BackgroundColor = const Color(0xFFF4F6FA);
  static Color neutralsComponent2BackgroundColor = const Color(0xFFE6EAF5);
  static Color neutralsSurfaceColor = const Color(0xFFF4F6FA);
  static Color neutralsSurfaceHoverColor = const Color(0xFFEEF1F8);
  static Color neutralsBorderColor = const Color(0xFFB6C2E2);
  static Color neutralsBorderHoverColor = const Color(0xFFA7B5DA);
  static Color neutralsShapeTertiaryColor = const Color(0xFF6677A2);
  static Color neutralsShapeTertiaryHoverColor = const Color(0xFF445275);
  static Color neutralsShapeTertiaryActiveColor = const Color(0xFF333E5A);
  static Color neutralsShapeTertiaryDisabledColor = const Color(0xFFB8C4E5);
  static Color neutralsTextTertiaryColor = const Color(0xFF445275);
  static Color neutralsTextTertiaryDisabledColor = const Color(0xFFB9C4D9);
  static Color neutralsShapeSecondaryColor = const Color(0xFF445275);
  static Color neutralsShapeSecondaryHoverColor = const Color(0xFF333E5A);
  static Color neutralsShapeSecondaryActiveColor = const Color(0xFF333E5A);
  static Color neutralsShapeSecondaryDisabledColor = const Color(0xFFB8C4E5);
  static Color neutralsTextSecondaryColor = const Color(0xFF333E5A);
  static Color neutralsTextSecondaryDisabledColor = const Color(0xFFB9C4D9);
  static Color neutralsTextPrimaryColor = const Color(0xFF1A1A1A);
  static Color neutralsTextPrimaryDisabledColor = const Color(0xFFE0E0E0);
  // dark theme
  static Color darkthemePageBackgroundColor = const Color(0xFF272831);
  static Color neutralsdarkthemePageBackgroundColor = const Color(0xFF292A32);

// static Color blackColor = const Color(0xFF1A141F);
  //
  //
  // static Color neutralsShapeColor = const Color(0xFF6677A2);
  //
  // static Color neutralsTextTertiaryColor = const Color(0xFF445275);
  //
  // static Color neutralsTextPrimaryColor = const Color(0xFF11151F);
  //
  static Color neutralsBlackColor = const Color(0xFF151522);
  //
  static Color neutralsGreyColor = const Color(0xFF666666);
//
// static Color neutralsBorderColor = const Color(0xFFB6C2E2);
//
// static Color neutralsShapeSecondaryColor = const Color(0xff445275);
//
//
// static Color errorBorderColor = const Color(0xFFEE1E34);
//
//
// static Color orangeColor = const Color(0xFFE09345);
//
// static Color hue246SurfaceColor = const Color(0xFFEEEDFF);
//
//
// static Color hue246TextColor = const Color(0xFF392494);

}
