import 'package:flutter/material.dart';

/// App Constants
/// This file contains all the constant values used throughout the application
/// including colors, dimensions, durations, and other configurable values.
class AppConstants {
  // Private constructor to prevent instantiation
  AppConstants._();

  // ============================================================================
  // COLOR PALETTE
  // ============================================================================

  /// Primary color palette for the application
  static const Color primaryLight = Color(0xFFF4F1EA); // Light cream/beige
  static const Color primaryMedium = Color(0xFFB0D182); // Light green
  static const Color primaryDark = Color(0xFF6A8E4E); // Medium green
  static const Color primaryDarkest = Color(0xFF2C473E); // Dark green/teal

  // ============================================================================
  // THEME COLORS
  // ============================================================================

  /// Background colors
  static const Color backgroundColor = primaryLight;
  static const Color surfaceColor = Colors.white;
  static const Color cardColor = Colors.white;

  /// Text colors
  static const Color textPrimary = primaryDarkest;
  static const Color textSecondary = primaryDark;
  static const Color textLight = primaryMedium;

  /// Accent colors
  static const Color accentColor = primaryMedium;
  static const Color successColor = primaryDark;
  static const Color warningColor = Color(0xFFFFA726);
  static const Color errorColor = Color(0xFFE57373);

  // ============================================================================
  // DIMENSIONS
  // ============================================================================

  /// Spacing and padding values
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 48.0;

  /// Border radius values
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 12.0;
  static const double radiusXL = 16.0;
  static const double radiusXXL = 24.0;

  /// Icon sizes
  static const double iconS = 16.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;
  static const double iconXL = 48.0;

  // ============================================================================
  // FONT SIZES
  // ============================================================================

  static const double fontSizeXS = 10.0;
  static const double fontSizeS = 12.0;
  static const double fontSizeM = 14.0;
  static const double fontSizeL = 16.0;
  static const double fontSizeXL = 18.0;
  static const double fontSizeXXL = 20.0;
  static const double fontSizeTitle = 24.0;
  static const double fontSizeHeadline = 28.0;

  // ============================================================================
  // ANIMATION DURATIONS
  // ============================================================================

  static const Duration animationFast = Duration(milliseconds: 150);
  static const Duration animationNormal = Duration(milliseconds: 300);
  static const Duration animationSlow = Duration(milliseconds: 500);

  // ============================================================================
  // SPLASH SCREEN CONFIGURATION
  // ============================================================================

  static const Duration splashDelay = Duration(seconds: 3);
  static const String logoAssetPath = 'assets/images/MainLogo.png';
  static const double splashLogoSizeX = 250.0 * 1.2;
  static const double splashLogoSizeY = 99.21 * 1.2;
  static const double splashAppNameFontSize = 24.0;

  // ============================================================================
  // FOOTER CONFIGURATION
  // ============================================================================

  static const String subLogoAssetPath = 'assets/images/SubLogo.png';
  static const double footerButtonSize = 50.0;
  static const double footerSubLogoHeight = 40.0;

  // ============================================================================
  // APP INFORMATION
  // ============================================================================

  static const String appName = 'PharmacoLab';
  static const String appVersion = '1.0.0';

  // ============================================================================
  // UTILITY METHODS
  // ============================================================================

  /// Get a color with opacity
  static Color withOpacity(Color color, double opacity) {
    return color.withValues(alpha: opacity);
  }

  /// Get a lighter shade of a color
  static Color lighten(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslLight = hsl.withLightness(
      (hsl.lightness + amount).clamp(0.0, 1.0),
    );
    return hslLight.toColor();
  }

  /// Get a darker shade of a color
  static Color darken(Color color, [double amount = 0.1]) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }
}

/// Color Palette Extension
/// Provides easy access to color variations
extension ColorPalette on Color {
  /// Get a lighter version of this color
  Color lighten([double amount = 0.1]) => AppConstants.lighten(this, amount);

  /// Get a darker version of this color
  Color darken([double amount = 0.1]) => AppConstants.darken(this, amount);

  /// Get this color with opacity
  Color withAlpha(double opacity) => withValues(alpha: opacity);
}
