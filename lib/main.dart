// import 'package:dynamic_color/dynamic_color.dart';

import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:trackmyhealthflutter/screens/home_screen.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  surfaceTint: Color(0xFF6750A4),
  onErrorContainer: Color(0xFF410E0B),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFF9DEDC),
  onTertiaryContainer: Color(0xFF31111D),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFFFD8E4),
  tertiary: Color(0xFF7D5260),
  shadow: Color(0xFF000000),
  error: Color(0xFFB3261E),
  outline: Color(0xFF79747E),
  onBackground: Color(0xFF1C1B1F),
  background: Color(0xFFFFFBFE),
  onInverseSurface: Color(0xFFF4EFF4),
  inverseSurface: Color(0xFF313033),
  onSurfaceVariant: Color(0xFF49454F),
  onSurface: Color(0xFF1C1B1F),
  surfaceVariant: Color(0xFFE7E0EC),
  surface: Color(0xFFFFFBFE),
  onSecondaryContainer: Color(0xFF1D192B),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE8DEF8),
  secondary: Color(0xFF625B71),
  inversePrimary: Color(0xFFD0BCFF),
  onPrimaryContainer: Color(0xFF21005D),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFEADDFF),
  primary: Color(0xFF6750A4),
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  surfaceTint: Color(0xFFD0BCFF),
  onErrorContainer: Color(0xFFF2B8B5),
  onError: Color(0xFF601410),
  errorContainer: Color(0xFF8C1D18),
  onTertiaryContainer: Color(0xFFFFD8E4),
  onTertiary: Color(0xFF492532),
  tertiaryContainer: Color(0xFF633B48),
  tertiary: Color(0xFFEFB8C8),
  shadow: Color(0xFF000000),
  error: Color(0xFFF2B8B5),
  outline: Color(0xFF938F99),
  onBackground: Color(0xFFE6E1E5),
  background: Color(0xFF1C1B1F),
  onInverseSurface: Color(0xFF313033),
  inverseSurface: Color(0xFFE6E1E5),
  onSurfaceVariant: Color(0xFFCAC4D0),
  onSurface: Color(0xFFE6E1E5),
  surfaceVariant: Color(0xFF49454F),
  surface: Color(0xFF1C1B1F),
  onSecondaryContainer: Color(0xFFE8DEF8),
  onSecondary: Color(0xFF332D41),
  secondaryContainer: Color(0xFF4A4458),
  secondary: Color(0xFFCCC2DC),
  inversePrimary: Color(0xFF6750A4),
  onPrimaryContainer: Color(0xFFEADDFF),
  onPrimary: Color(0xFF381E72),
  primaryContainer: Color(0xFF4F378B),
  primary: Color(0xFFD0BCFF),
);

void main() {
  runApp(const TrackMyHealth());
}

class TrackMyHealth extends StatelessWidget {
  const TrackMyHealth({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Wrap MaterialApp with a DynamicColorBuilder.
    return DynamicColorBuilder(builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
      // ColorScheme lightColorScheme;
      // ColorScheme darkColorScheme;

      // if (lightDynamic != null && darkDynamic != null) {
      //   // On Android S+ devices, use the provided dynamic color scheme.
      //   // (Recommended) Harmonize the dynamic color scheme' built-in semantic colors.
      //   lightColorScheme = lightDynamic.harmonized();
      //   // (Optional) Customize the scheme as desired. For example, one might
      //   // want to use a brand color to override the dynamic [ColorScheme.secondary].
      //   lightColorScheme = lightColorScheme.copyWith(secondary: _brandBlue);
      //   // // (Optional) If applicable, harmonize custom colors.
      //   lightCustomColors = lightCustomColors.harmonized(lightColorScheme);
      //
      //   // Repeat for the dark color scheme.
      //   darkColorScheme = darkDynamic.harmonized();
      //   darkColorScheme = darkColorScheme.copyWith(secondary: _brandBlue);
      //   darkCustomColors = darkCustomColors.harmonized(darkColorScheme);
      //
      //   _isDemoUsingDynamicColors = true; // ignore, only for demo purposes
      // } else {
      //   // Otherwise, use fallback schemes.
      //   lightColorScheme = ColorScheme.fromSeed(
      //     seedColor: _brandBlue,
      //   );
      //   darkColorScheme = ColorScheme.fromSeed(
      //     seedColor: _brandBlue,
      //     brightness: Brightness.dark,
      //   );
      // }
      return MaterialApp(
          theme: ThemeData(colorScheme: lightColorScheme),
          darkTheme: ThemeData(colorScheme: darkColorScheme),
          home: const NavigationExample(),
          debugShowCheckedModeBanner: false);
    });
  }
}
