import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

/// Sistema de tipografía centralizado
/// TODOS los textos deben usar estos estilos
/// ✅ OPTIMIZADO PARA TABLET - Textos más pequeños y proporcionales
class AppTypography {
  // ===========================
  // DETECCIÓN DE TABLET
  // ===========================
  static bool _isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600;
  }

  // ===========================
  // TÍTULOS (Headings)
  // ===========================
  static TextStyle h1(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 24.sp : 32.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.2,
      );

  static TextStyle h2(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 20.sp : 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.2,
      );

  static TextStyle h3(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 17.sp : 20.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        height: 1.3,
      );

  static TextStyle h4(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 15.sp : 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        height: 1.3,
      );

  static TextStyle h5(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 14.sp : 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  static TextStyle h6(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  // ===========================
  // TEXTOS DE CUERPO (Body)
  // ===========================
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 14.sp : 16.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        height: 1.5,
      );

  static TextStyle bodyMedium(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        height: 1.5,
      );

  static TextStyle bodySmall(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        height: 1.5,
      );

  // ===========================
  // TEXTOS SECUNDARIOS
  // ===========================
  static TextStyle bodySecondary(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 12.sp : 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textSecondary,
        height: 1.5,
      );

  static TextStyle bodySecondarySmall(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textSecondary,
        height: 1.5,
      );

  // ===========================
  // CAPTIONS Y LABELS
  // ===========================
  static TextStyle caption(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textSecondary,
        height: 1.4,
      );

  static TextStyle captionBold(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondary,
        height: 1.4,
      );

  static TextStyle label(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  static TextStyle labelSmall(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
        height: 1.4,
      );

  // ===========================
  // BOTONES
  // ===========================
  static TextStyle button(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
        height: 1.2,
      );

  static TextStyle buttonSmall(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
        height: 1.2,
      );

  static TextStyle buttonLarge(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 14.sp : 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
        height: 1.2,
      );

  // ===========================
  // PRECIOS Y MONTOS
  // ===========================
  static TextStyle priceSmall(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.success,
        height: 1.2,
      );

  static TextStyle price(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 16.sp : 18.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.success,
        height: 1.2,
      );

  static TextStyle priceLarge(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 20.sp : 24.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.success,
        height: 1.2,
      );

  // ===========================
  // ESTILOS PERSONALIZADOS
  // ===========================
  
  /// Para títulos de AppBar
  static TextStyle appBarTitle(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 16.sp : 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textLight,
        height: 1.2,
      );

  /// Para hints de inputs
  static TextStyle inputHint(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textHint,
        height: 1.5,
      );

  /// Para textos de error
  static TextStyle error(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 11.sp : 12.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.error,
        height: 1.4,
      );

  /// Para números de tarjetas de estadísticas
  static TextStyle statNumber(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 22.sp : 28.sp,
        fontWeight: FontWeight.bold,
        height: 1.2,
      );

  /// Para etiquetas de tarjetas de estadísticas
  static TextStyle statLabel(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 12.sp : 13.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
        height: 1.3,
      );

  /// Para inputs de texto
  static TextStyle input(BuildContext context) => TextStyle(
        fontSize: _isTablet(context) ? 13.sp : 14.sp,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        height: 1.5,
      );
}