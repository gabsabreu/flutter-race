import 'package:meuapp/shared/theme/app_colors.dart';
import 'package:meuapp/shared/theme/app_text_styles.dart';

export 'app_text.dart';

class AppTheme {
  static final instance = AppTheme();

  final _colors = AppColors();
  static IAppColors get colors => instance._colors;

  final _textStyles = AppTextStyles();
  static IAppTextStyles get textStyles => instance._textStyles;
}
