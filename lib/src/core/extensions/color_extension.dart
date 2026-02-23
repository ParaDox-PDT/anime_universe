import 'dart:ui';

extension ColorExtension on Color {
  // Opacity extension
  Color newWithOpacity(double amount) {
    // Assert that the opacity is between 0.0 and 1.0
    assert(amount >= 0.0 && amount <= 1.0, 'Opacity must be between 0.0 and 1.0');
    // Calculate the new opacity
    final alpha = (amount * 255).round();
    // Return the new color with the new opacity
    return withAlpha(alpha);
  }
}
