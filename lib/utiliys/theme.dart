import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284569232),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4293320447),
      onPrimaryContainer: Color(4280095048),
      secondary: Color(4284504945),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293320697),
      onSecondaryContainer: Color(4280097067),
      tertiary: Color(4286337635),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294957541),
      onTertiaryContainer: Color(4281340191),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294834431),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282926414),
      outline: Color(4286150015),
      outlineVariant: Color(4291413200),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4291542783),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4280095048),
      primaryFixedDim: Color(4291542783),
      onPrimaryFixedVariant: Color(4282990198),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4280097067),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4282926168),
      tertiaryFixed: Color(4294957541),
      onTertiaryFixed: Color(4281340191),
      tertiaryFixedDim: Color(4293834955),
      onTertiaryFixedVariant: Color(4284627787),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282727026),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286082216),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282662996),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286017928),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284364615),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287981689),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834431),
      onSurface: Color(4280032032),
      onSurfaceVariant: Color(4282663242),
      outline: Color(4284571239),
      outlineVariant: Color(4286413187),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4291542783),
      primaryFixed: Color(4286082216),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284437645),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286017928),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284373358),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287981689),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286206048),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280555599),
      surfaceTint: Color(4284569232),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282727026),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280492082),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282662996),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281866022),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284364615),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294834431),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280623915),
      outline: Color(4282663242),
      outlineVariant: Color(4282663242),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281413430),
      inversePrimary: Color(4293978623),
      primaryFixed: Color(4282727026),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281279578),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282662996),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281215549),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284364615),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282655281),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292729056),
      surfaceBright: Color(4294834431),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294439674),
      surfaceContainer: Color(4294044916),
      surfaceContainerHigh: Color(4293650158),
      surfaceContainerHighest: Color(4293321193),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291542783),
      surfaceTint: Color(4291542783),
      onPrimary: Color(4281477214),
      primaryContainer: Color(4282990198),
      onPrimaryContainer: Color(4293320447),
      secondary: Color(4291478492),
      onSecondary: Color(4281478721),
      secondaryContainer: Color(4282926168),
      onSecondaryContainer: Color(4293320697),
      tertiary: Color(4293834955),
      onTertiary: Color(4282983732),
      tertiaryContainer: Color(4284627787),
      onTertiaryContainer: Color(4294957541),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279505688),
      onSurface: Color(4293321193),
      onSurfaceVariant: Color(4291413200),
      outline: Color(4287860633),
      outlineVariant: Color(4282926414),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4284569232),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4280095048),
      primaryFixedDim: Color(4291542783),
      onPrimaryFixedVariant: Color(4282990198),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4280097067),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4282926168),
      tertiaryFixed: Color(4294957541),
      onTertiaryFixed: Color(4281340191),
      tertiaryFixedDim: Color(4293834955),
      onTertiaryFixedVariant: Color(4284627787),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291806207),
      surfaceTint: Color(4291542783),
      onPrimary: Color(4279765571),
      primaryContainer: Color(4287924422),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291741664),
      onSecondary: Color(4279702566),
      secondaryContainer: Color(4287860133),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294098128),
      onTertiary: Color(4280945434),
      tertiaryContainer: Color(4290020245),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294900223),
      onSurfaceVariant: Color(4291742164),
      outline: Color(4289044908),
      outlineVariant: Color(4286939532),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4283056248),
      primaryFixed: Color(4293320447),
      onPrimaryFixed: Color(4279370814),
      primaryFixedDim: Color(4291542783),
      onPrimaryFixedVariant: Color(4281871973),
      secondaryFixed: Color(4293320697),
      onSecondaryFixed: Color(4279373600),
      secondaryFixedDim: Color(4291478492),
      onSecondaryFixedVariant: Color(4281807943),
      tertiaryFixed: Color(4294957541),
      onTertiaryFixed: Color(4280550933),
      tertiaryFixedDim: Color(4293834955),
      onTertiaryFixedVariant: Color(4283378490),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294900223),
      surfaceTint: Color(4291542783),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291806207),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294900223),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291741664),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965753),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294098128),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279505688),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294900223),
      outline: Color(4291742164),
      outlineVariant: Color(4291742164),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293321193),
      inversePrimary: Color(4281082199),
      primaryFixed: Color(4293649407),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291806207),
      onPrimaryFixedVariant: Color(4279765571),
      secondaryFixed: Color(4293649405),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291741664),
      onSecondaryFixedVariant: Color(4279702566),
      tertiaryFixed: Color(4294959081),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294098128),
      onTertiaryFixedVariant: Color(4280945434),
      surfaceDim: Color(4279505688),
      surfaceBright: Color(4282005566),
      surfaceContainerLowest: Color(4279176467),
      surfaceContainerLow: Color(4280032032),
      surfaceContainer: Color(4280295204),
      surfaceContainerHigh: Color(4281018671),
      surfaceContainerHighest: Color(4281742394),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
