import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Sistema de espaciado centralizado usando ScreenUtil
/// TODOS los espaciados deben usar estas constantes
/// ✅ OPTIMIZADO PARA TABLET - Más aire, menos apretado
class AppSpacing {
  // ===========================
  // DETECCIÓN DE TABLET
  // ===========================
  static bool _isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  // ===========================
  // ESPACIADO VERTICAL (height)
  // ===========================
  static double xxs(BuildContext context) => _isTablet(context) ? 3.h : 2.h;
  static double xs(BuildContext context) => _isTablet(context) ? 6.h : 4.h;
  static double sm(BuildContext context) => _isTablet(context) ? 12.h : 8.h;
  static double md(BuildContext context) => _isTablet(context) ? 16.h : 12.h;
  static double lg(BuildContext context) => _isTablet(context) ? 24.h : 16.h;
  static double xl(BuildContext context) => _isTablet(context) ? 28.h : 20.h;
  static double xxl(BuildContext context) => _isTablet(context) ? 32.h : 24.h;
  static double huge(BuildContext context) => _isTablet(context) ? 40.h : 32.h;
  static double massive(BuildContext context) => _isTablet(context) ? 56.h : 48.h;

  // ===========================
  // ESPACIADO HORIZONTAL (width)
  // ===========================
  static double xxsW(BuildContext context) => _isTablet(context) ? 3.w : 2.w;
  static double xsW(BuildContext context) => _isTablet(context) ? 6.w : 4.w;
  static double smW(BuildContext context) => _isTablet(context) ? 12.w : 8.w;
  static double mdW(BuildContext context) => _isTablet(context) ? 16.w : 12.w;
  static double lgW(BuildContext context) => _isTablet(context) ? 24.w : 16.w;
  static double xlW(BuildContext context) => _isTablet(context) ? 28.w : 20.w;
  static double xxlW(BuildContext context) => _isTablet(context) ? 32.w : 24.w;
  static double hugeW(BuildContext context) => _isTablet(context) ? 40.w : 32.w;
  static double massiveW(BuildContext context) => _isTablet(context) ? 56.w : 48.w;

  // ===========================
  // PADDING COMPLETO (EdgeInsets.all)
  // ===========================
  static EdgeInsets paddingXXS(BuildContext context) => EdgeInsets.all(xxs(context));
  static EdgeInsets paddingXS(BuildContext context) => EdgeInsets.all(xs(context));
  static EdgeInsets paddingSM(BuildContext context) => EdgeInsets.all(sm(context));
  static EdgeInsets paddingMD(BuildContext context) => EdgeInsets.all(md(context));
  static EdgeInsets paddingLG(BuildContext context) => EdgeInsets.all(lg(context));
  static EdgeInsets paddingXL(BuildContext context) => EdgeInsets.all(xl(context));
  static EdgeInsets paddingXXL(BuildContext context) => EdgeInsets.all(xxl(context));
  static EdgeInsets paddingHuge(BuildContext context) => EdgeInsets.all(huge(context));

  // ===========================
  // PADDING HORIZONTAL
  // ===========================
  static EdgeInsets paddingHorizontalXS(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: xsW(context));
  static EdgeInsets paddingHorizontalSM(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: smW(context));
  static EdgeInsets paddingHorizontalMD(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: mdW(context));
  static EdgeInsets paddingHorizontalLG(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: lgW(context));
  static EdgeInsets paddingHorizontalXL(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: xlW(context));
  static EdgeInsets paddingHorizontalXXL(BuildContext context) => 
      EdgeInsets.symmetric(horizontal: xxlW(context));

  // ===========================
  // PADDING VERTICAL
  // ===========================
  static EdgeInsets paddingVerticalXS(BuildContext context) => 
      EdgeInsets.symmetric(vertical: xs(context));
  static EdgeInsets paddingVerticalSM(BuildContext context) => 
      EdgeInsets.symmetric(vertical: sm(context));
  static EdgeInsets paddingVerticalMD(BuildContext context) => 
      EdgeInsets.symmetric(vertical: md(context));
  static EdgeInsets paddingVerticalLG(BuildContext context) => 
      EdgeInsets.symmetric(vertical: lg(context));
  static EdgeInsets paddingVerticalXL(BuildContext context) => 
      EdgeInsets.symmetric(vertical: xl(context));
  static EdgeInsets paddingVerticalXXL(BuildContext context) => 
      EdgeInsets.symmetric(vertical: xxl(context));

  // ===========================
  // RADIUS (para BorderRadius)
  // ===========================
  static double radiusXS(BuildContext context) => _isTablet(context) ? 6.r : 4.r;
  static double radiusSM(BuildContext context) => _isTablet(context) ? 10.r : 8.r;
  static double radiusMD(BuildContext context) => _isTablet(context) ? 14.r : 12.r;
  static double radiusLG(BuildContext context) => _isTablet(context) ? 18.r : 16.r;
  static double radiusXL(BuildContext context) => _isTablet(context) ? 22.r : 20.r;
  static double radiusFull(BuildContext context) => 999.r;

  // BorderRadius completo
  static BorderRadius borderRadiusXS(BuildContext context) => 
      BorderRadius.circular(radiusXS(context));
  static BorderRadius borderRadiusSM(BuildContext context) => 
      BorderRadius.circular(radiusSM(context));
  static BorderRadius borderRadiusMD(BuildContext context) => 
      BorderRadius.circular(radiusMD(context));
  static BorderRadius borderRadiusLG(BuildContext context) => 
      BorderRadius.circular(radiusLG(context));
  static BorderRadius borderRadiusXL(BuildContext context) => 
      BorderRadius.circular(radiusXL(context));
  static BorderRadius borderRadiusFull(BuildContext context) => 
      BorderRadius.circular(radiusFull(context));

  // ===========================
  // TAMAÑOS DE ICONOS
  // ===========================
  static double iconXS(BuildContext context) => _isTablet(context) ? 16.sp : 16.sp;
  static double iconSM(BuildContext context) => _isTablet(context) ? 18.sp : 20.sp;
  static double iconMD(BuildContext context) => _isTablet(context) ? 20.sp : 24.sp;
  static double iconLG(BuildContext context) => _isTablet(context) ? 24.sp : 28.sp;
  static double iconXL(BuildContext context) => _isTablet(context) ? 28.sp : 32.sp;

  // ===========================
  // ALTURAS DE BOTONES
  // ===========================
  static double buttonHeightSM(BuildContext context) => _isTablet(context) ? 40.h : 44.h;
  static double buttonHeightMD(BuildContext context) => _isTablet(context) ? 44.h : 48.h;
  static double buttonHeightLG(BuildContext context) => _isTablet(context) ? 48.h : 52.h;
}