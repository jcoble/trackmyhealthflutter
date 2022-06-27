import 'package:dynamic_color/dynamic_color.dart';

import 'package:flutter/material.dart';

const lightColorScheme = ColorScheme(
  brightness : Brightness.light,
  surfaceTint : Color(0xFF6750A4),
  onErrorContainer : Color(0xFF410E0B),
  onError : Color(0xFFFFFFFF),
  errorContainer : Color(0xFFF9DEDC),
  onTertiaryContainer : Color(0xFF31111D),
  onTertiary : Color(0xFFFFFFFF),
  tertiaryContainer : Color(0xFFFFD8E4),
  tertiary : Color(0xFF7D5260),
  shadow : Color(0xFF000000),
  error : Color(0xFFB3261E),
  outline : Color(0xFF79747E),
  onBackground : Color(0xFF1C1B1F),
  background : Color(0xFFFFFBFE),
  onInverseSurface : Color(0xFFF4EFF4),
  inverseSurface : Color(0xFF313033),
  onSurfaceVariant : Color(0xFF49454F),
  onSurface : Color(0xFF1C1B1F),
  surfaceVariant : Color(0xFFE7E0EC),
  surface : Color(0xFFFFFBFE),
  onSecondaryContainer : Color(0xFF1D192B),
  onSecondary : Color(0xFFFFFFFF),
  secondaryContainer : Color(0xFFE8DEF8),
  secondary : Color(0xFF625B71),
  inversePrimary : Color(0xFFD0BCFF),
  onPrimaryContainer : Color(0xFF21005D),
  onPrimary : Color(0xFFFFFFFF),
  primaryContainer : Color(0xFFEADDFF),
  primary : Color(0xFF6750A4),
);

const darkColorScheme = ColorScheme(
  brightness : Brightness.dark,
  surfaceTint : Color(0xFFD0BCFF),
  onErrorContainer : Color(0xFFF2B8B5),
  onError : Color(0xFF601410),
  errorContainer : Color(0xFF8C1D18),
  onTertiaryContainer : Color(0xFFFFD8E4),
  onTertiary : Color(0xFF492532),
  tertiaryContainer : Color(0xFF633B48),
  tertiary : Color(0xFFEFB8C8),
  shadow : Color(0xFF000000),
  error : Color(0xFFF2B8B5),
  outline : Color(0xFF938F99),
  onBackground : Color(0xFFE6E1E5),
  background : Color(0xFF1C1B1F),
  onInverseSurface : Color(0xFF313033),
  inverseSurface : Color(0xFFE6E1E5),
  onSurfaceVariant : Color(0xFFCAC4D0),
  onSurface : Color(0xFFE6E1E5),
  surfaceVariant : Color(0xFF49454F),
  surface : Color(0xFF1C1B1F),
  onSecondaryContainer : Color(0xFFE8DEF8),
  onSecondary : Color(0xFF332D41),
  secondaryContainer : Color(0xFF4A4458),
  secondary : Color(0xFFCCC2DC),
  inversePrimary : Color(0xFF6750A4),
  onPrimaryContainer : Color(0xFFEADDFF),
  onPrimary : Color(0xFF381E72),
  primaryContainer : Color(0xFF4F378B),
  primary : Color(0xFFD0BCFF),
);
class NavigationExample extends StatefulWidget {
  const NavigationExample({Key? key}) : super(key: key);

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: NavigationBar(
        backgroundColor: lightColorScheme.primaryContainer,
        height: 90,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.health_and_safety_rounded),
            icon: Icon(Icons.health_and_safety_outlined),
            label: 'Treatments',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.landscape_rounded),
            icon: Icon(Icons.landscape_outlined),
            label: 'Progress',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.medication_liquid_outlined),
            icon: Icon(Icons.access_alarm_outlined),
            label: 'Reminders',
          ),
          NavigationDestination(
              selectedIcon: Icon(Icons.note_alt_rounded),
              icon: Icon(Icons.note_alt_outlined),
              label: 'Appts'
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          disabledElevation: currentPageIndex == 0 ? 0 : 3,
          onPressed: () => setState(() {}),
          label: const Text('Add'),
          icon: const Icon(Icons.pin_end_outlined),
          backgroundColor: lightColorScheme.primary,
          elevation: 3),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Treatments',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(alignment: Alignment.center, child: const Text('Page 2')),
        Container(
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: lightColorScheme.background,
          alignment: Alignment.center,
          child: const Text('Page 4'),
        ),
      ][currentPageIndex],
    );
  }
}

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.danger,
  });

  final Color? danger;

  @override
  CustomColors copyWith({Color? danger}) {
    return CustomColors(
      danger: danger ?? this.danger,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(danger: danger!.harmonizeWith(dynamic.primary));
  }
}
