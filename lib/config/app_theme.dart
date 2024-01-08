import 'package:nomixe/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color parseStringToHex(String hex) {
    return Color(int.parse(hex.substring(1, 7), radix: 16) + 0xFF000000);
  }

  static String parseColorToHex(Color color) {
    return color.toString().substring(6, 16).replaceAll('0xff', '#');
  }

  // Define custom colors. The 'guide' color values are from
  // https://material.io/design/color/the-color-system.html#color-theme-creation
  static const Color guidePrimary = Color(0xFF6200EE);
  static const Color guidePrimaryVariant = Color(0xFF3700B3);
  static const Color guideSecondary = Color(0xFF03DAC6);
  static const Color guideSecondaryVariant = Color(0xFF018786);
  static const Color guideError = Color(0xFFB00020);
  static const Color guideErrorDark = Color(0xFFCF6679);
  static const Color blueBlues = Color(0xFF174378);

  static const Color green = Colors.green;
  static const Color lightGreen = Color(0xFF9FFF99);
  static const Color red = Colors.red;
  static const Color lightRed = Color(0xFFEE9281);
  static const Color orange = Colors.deepOrange;
  static const Color blue = Color(0xFF6C63FF);
  static const Color lightBlue = Color(0xFF81B6EE);
  static const Color lightPurple = Color(0xFF6E85B6);
  static const Color darkPurple = Color(0xFF370BAC);
  static const Color yellow = Colors.yellow;
  static const Color lightYellow = Color(0xFFEEE981);
  static const Color black = Colors.black;

  static const Color lightLineColor = Color.fromARGB(255, 224, 224, 224);
  static const Color transparent = Colors.transparent;

  static Color appColor = const Color(0xFFCCFF01);
  static Color appBGColor = const Color(0xFF353535);
  static Color firstTop = const Color(0xFF0056A6);
  static Color firstBottom = const Color(0xFF0C81B4);
  static Color secondTop = const Color(0xFF7FC53A);
  static Color secondBottom = const Color(0xFF6CA116);
  static Color thirdTop = const Color(0xFFFF7043);
  static Color thirdBottom = const Color(0xFFFA3E03);
  static Color fourthTop = const Color(0xFFF254CF);
  static Color fourthBottom = const Color(0xFFC811A0);
  static Color orderPriceBorder = const Color(0xFF8EB103);
  static Color orderPriceBG = const Color(0xFF98F500);
  static Color dialogBG = const Color(0xFFECFFA1);

  static const Color darkBackgroundColor = Color(0xFF181C1E);
  static const Color lightGray = Color(0xFFE1E1E1);
  static const Color lightBackgroundColor = Color(0xFFFFFFFF);
  static const Color lightComponentsColor = Color(0xFF40CAFF);
  static const Color lightCardColor = Color(0xFFF4F8FA);

  static const Color errorColor = Color(0xFFD60000);
  static const Color btnColor = Color(0xFFFF9900);
  static const Color lightTextColor = Color(0xFFF4F8FA);
  static const Color fieldTextColor = Color(0xFFF2F2F2);
  static const Color dotTextColor = Color(0xFF707070);
  static const Color darkTextColor = Color(0xFF181C1E);
  static const Color boxShadowColor = Color(0x1F000000);
  static const Color splashColor = Color(0x1F000000);
  static const Color splashScreenBgColor = Color(0xFFF37D71);
  static const Color graphColorPurple = Color(0xFFC855CB);
  static const Color graphColorOrange = Color(0xFFFF9900);

  static const Color whiteColor = Colors.white;
  static const Color blackColor = Color(0xFF1F1F1F);
  static const Color fieldOutlineColor = Color(0xFF808080);
  static const Color searchHintColor = Color(0xFF888888);
  static const Color textFieldFillColor = Color(0xFFFAFAFA);
  static const Color buyNowButtonColor = Color(0xFFD1F3DD);
  static const Color hintColor = Color(0xFF959595);
  static const Color chatHintColor = Color(0xFFBEBEBE);
  static const Color textFieldUnderline = Color(0xFFDFDFDF);
  static const Color postBodyBackgroundColor = Color(0xFFF5F5F5);
  static const Color homeScreenHorizontalListviewBg = Color(0xFF353536);
  static const Color unSelectedCategoryColor = Color(0xFF4A4A4B);
  static const Color dividerColor = Color(0xFF000000);
  static const Color darkDividerColor = Color(0xFFD9D9D9);

  static const Color animalsContainerColor = Color(0xFFD0D6FF);
  static const Color animalsBorderColor = Color(0xFF475BE4);
  static const Color foodContainerColor = Color(0xFFFFE1BD);
  static const Color foodBorderColor = Color(0xFFDC9949);
  static const Color accessoriesContainerColor = Color(0xFFA6F6E8);
  static const Color accessoriesBorderColor = Color(0xFF3B9686);

  static const Color screenBackgroundColor = Color(0xFFF5F5F5);
  static const Color bottomNavBarBackground = Color(0xFFFFFFFF);
  static const Color selectedNavBarItemColor = Color(0xFFB59E5C);
  static const Color appointmentsCardColor = Color(0xFFE4F2FF);

  // static const Color primaryColor = Color(0xFF7C4DFF);
  // static const Color primaryColor = Color(0xFF111344);
  // static const Color primaryColor = Color(0xFF304675);
  // static const Color darkPrimaryColor = Color(0xFF4A9CE2);

  static const Color primaryColor = Color(0xFF767DED);
  static const Color darkPrimaryColor = Color(0xFF4770DA);
  static const Color gradientStartColor = Color(0xFF817FF1);
  static const Color gradientEndColor = Color(0xFF1665C3);
  static const Color linearBgColor = Color(0xFFF1F1F1);
  static const Color arrowButtonBg = Color(0xFFF2F6FF);
  static const Color labelHintColor = Color(0xFF757575);
  static const Color disableButtonColor = Color(0xFFC5C5C5);
  static const Color lightGreyColor = Color(0xFFF3F3F3);

  static LinearGradient onBoardingLinearGradient = const LinearGradient(
    colors: [
      Color(0xFF478ADA),
      Color(0xFFDA477C),
    ],
    begin: FractionalOffset.bottomLeft,
    end: FractionalOffset.topRight,
  );

  static LinearGradient elevatedButtonGradient = const LinearGradient(
    colors: <Color>[
      gradientStartColor,
      gradientEndColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const Color subtitleLightGreyColor = Color(0xFF8391A1);
  static const Color chatFieldBgColor = Color(0xFFF3F9FF);
  static const Color shadowColorHomePage = Color(0xFF000000);
  static const Color unselectedItemColor = Color(0xFF777777);
  static const Color noImageColor = Color(0xFFD9D9D9);
  static const Color viewsContainerColor = Color(0xFFFFF9EF);
  static const Color imageCountContainerColor = Color(0xFF414141);
  static const Color containerBackgroundColor = Color.fromRGBO(0, 0, 0, 0.08);
  static const Color statusTextColor = Color(0xFFB8B5B5);

  static const Color approveNotificationColor = Color(0xFF27D94E);
  static const Color successColor = Color(0xFF24DF4D);

  static const Color declineNotificationColor = Color(0xFFFF4A3F);
  static const Color cancelledAppointment = Color(0xFFD73A49);
  static const Color profileListTileColor = Color(0xFFE4EFF6);

  static const Color selectedNavBarBackgroundColor = Color(0xFF282828);
  static const Color selectedYellowColor = Color(0xFFFFCB74);
  static const Color reviewStarColor = Color(0xFFFFC107);
  static const Color reviewPostColor = Color(0xFF0085E3);

  static const Color unSelectedNavBarItemColor = Color(0xFF979797);

  static SweepGradient storyContainerGradient = const SweepGradient(
    colors: [
      Color(0xFF0F9DA6),
      Color(0xFF1AD94F),
      Color(0xFFF4921A),
      Color(0xFF0F9DA6),
      Color(0xFFF4921A),
    ],
  );

  static List<LinearGradient> get onBoardingGradients => const [
        LinearGradient(
          colors: [
            Color(0xFF478ADA),
            Color(0xFFDA477C),
          ],
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
        ),
        LinearGradient(
          colors: [
            Color(0xFFDA477C),
            Color(0xFF478ADA),
          ],
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.bottomRight,
        ),
        LinearGradient(
          colors: [
            gradientStartColor,
            gradientEndColor,
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomRight,
        ),
      ];

  static LinearGradient liveContainerGradient = LinearGradient(
    colors: [
      const Color(0xFF3897F0),
      const Color(0xFF3897F0).withOpacity(0.7),
      const Color(0xFFF65421),
    ],
    begin: FractionalOffset.centerLeft,
    end: FractionalOffset.centerRight,
  );

  static LinearGradient homeContainerGradient = const LinearGradient(
    colors: [
      Color(0xFFABFFEC),
      Color(0xFF7080B8),
    ],
    begin: FractionalOffset.centerLeft,
    end: FractionalOffset.centerRight,
  );

  static LinearGradient textGradient = const LinearGradient(
    colors: [
      Color(0xFF478ADA),
      Color(0xFFDA477C),
    ],
    begin: FractionalOffset.centerLeft,
    end: FractionalOffset.centerRight,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: Dimensions.h1,
          fontWeight: FontWeight.w500,
          color: blackColor,
        ),
        displayMedium: TextStyle(
          fontSize: Dimensions.h2,
          fontWeight: FontWeight.w700,
          color: blackColor,
        ),
        displaySmall: TextStyle(
          fontSize: Dimensions.h3,
          color: blackColor,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontSize: Dimensions.p1,
          fontWeight: FontWeight.w500,
          color: blackColor,
        ),
        bodyMedium: TextStyle(
          fontSize: Dimensions.p2,
          fontWeight: FontWeight.normal,
          color: blackColor,
        ),
        bodySmall: TextStyle(
          fontSize: Dimensions.p3,
          fontWeight: FontWeight.normal,
          color: blackColor,
        ),
      ),
      primaryColor: lightBackgroundColor,
      scaffoldBackgroundColor: lightBackgroundColor,
      primaryColorLight: const Color(0xFFF1F1F1),
      splashColor: splashColor,
      brightness: Brightness.light,
      highlightColor: splashColor,
      focusColor: primaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      fontFamily: 'Aeonik',
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: bottomNavBarBackground, elevation: 3),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: 12,
        ),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: primaryColor,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColor),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(
            secondary: const Color(0xFF79A6DC),
            brightness: Brightness.light,
          )
          .copyWith(secondary: primaryColor)
          .copyWith(secondary: primaryColor)
          .copyWith(background: lightBackgroundColor)
          .copyWith(error: errorColor),
    );
  }
}

extension MyThemeData on ThemeData {
  bool get isDarkTheme => brightness == Brightness.dark;

  bool get isLightTheme => brightness == Brightness.light;
}
