class Dimensions {
  // spaces
  static const double screenSpaces = 16.0;
  static const double screenHorizontalSpaces = 16.0;
  static const double screenVerticalSpaces = 18.0;

  static const double spaces = screenSpaces;
  static const double horizontalSpaces = screenHorizontalSpaces;
  static const double verticalSpaces = screenVerticalSpaces;

  static const double extraSpaces = screenSpaces * 2;
  static const double extraHorizontalSpaces = screenHorizontalSpaces * 2;
  static const double extraVerticalSpaces = screenVerticalSpaces * 2;

  static const double miniSpaces = screenSpaces / 2;
  static const double miniHorizontalSpaces = screenHorizontalSpaces / 2;
  static const double miniVerticalSpaces = screenVerticalSpaces / 2;

  static const double tinySpaces = screenSpaces / 3;
  static const double tinyHorizontalSpaces = screenHorizontalSpaces / 3;
  static const double tinyVerticalSpaces = screenVerticalSpaces / 3;

  // Padding
  static const double screenPadding = 16.0;
  static const double borderRadius = 40.0;

  // fonts ** headlines bold and body light **
  static const double h1 = 38.0;
  static const double h2 = 32.0;
  static const double h3 = 24.0;
  static const double p1 = 18.0;
  static const double p2 = 16.0;
  static const double p3 = 10.0;

  static const double tinyBodyTextFontSize = 10.0;
  static const double extraBigBodyTextFontSize = 18.0;
  static const double bigBodyTextFontSize = 16.0;
  static const double bodyTextFontSize = p1; // 14.0
  static const double miniBodyTextFontSize = p2; // 12.0

  static const double textLinePadding = tinySpaces;

  static const double buttonTextFontSize = miniBodyTextFontSize + 2;
  static const double errorTextFontSize = miniBodyTextFontSize;
  static const double hintTextFontSize = miniBodyTextFontSize;

  // static const double main1PageHeaderFontSize = h1; // 34.0;
  static const double main2PageHeaderFontSize = h1; //h2; // 30.0;
  static const double pageHeaderFontSize = 28.0;
  static const double subPageHeaderFontSize = 20.0;
  static const double subPageTitleFontSize = 16.0;
  static const double sectionHeaderFontSize = 20.0;
  static const double customBigFontSize = 38.0;

  // dividers
  static const double dividerHeight = 16.0;
  static const double hugeDividerHeight = dividerHeight * 3.5;
  static const double bigDividerHeight = dividerHeight * 2;
  static const double miniDividerHeight = dividerHeight / 2;
  static const double tinyDividerHeight = dividerHeight / 3;
  static const double dividerThickness = 1.0;

  // input fields
  static const double inputFieldFontSize = bodyTextFontSize;
  static const double inputFieldCursorWidth = 2.0;

  static const double inputFieldVerticalPadding = 2.0; //20.0;
  static const double inputFieldHorizontalPadding = 20.0; //25.0;

  static const double inputFieldBorderWidth = 1.0;
  static const double inputFieldBorderRadius = 0.0;

  // buttons
  static const double buttonHeight = 55.0;
  static const double buttonWidth = double.infinity;
  static const double buttonRadius = 26.0;
  static const double arrowButtonRadius = 47.0;

  static const double buttonSpaces = 16.0;
  static const double buttonHorizontalSpaces = 10.0;
  static const double buttonVerticalSpaces = 18.0;

  // icons
  static const double iconSize = 20.0;
  static const double miniIconSize = 18.0;
  static const double tinyIconSize = 16.0;
  static const double bigIconSize = 22.0;

  static const double masterIconSize = 30.0;
  static const double navigationIconSize = 25.0;
  static const double subNavigationIconSize = miniIconSize;

  static const double iconSpaces = 6.0;
  static const double navigationIconSpaces = 22.0;
  static const double actionIconSpaces = 25.0;
  static const double customIconSpaces = 14.0;

  // cards
  static const double cardCornerRadius = 0.0;
  static const double cardElevation = 1.0;
  static const double cardHeaderFontSize = bigBodyTextFontSize;
  static const double cardTextFontSize = bodyTextFontSize;
  static const double cardIconSize = 32.0;

  // bottom sheets
  static const double bottomSheetRadius = radius;
  static const double bottomSheetPadding = extraSpaces;
  static const double bottomSheetTitleSize = extraBigBodyTextFontSize;
  static const double bottomSheetSubTitleSize = bigBodyTextFontSize;
  static const double bottomSheetTextSize = bodyTextFontSize;
  static const double bottomSheetHintSize = miniBodyTextFontSize;
  static const double bottomSheetButtonHeight = 55.0;
  static const double bottomSheetButtonIconHeight = 50.0;
  static const double bottomSheetPrimaryButtonTextSize = miniBodyTextFontSize;
  static const double bottomSheetSecondaryButtonTextSize = bodyTextFontSize;
  static const double bottomSheetButtonIconSize = miniIconSize; //iconSize;
  static const double bottomSheetButtonIconSpaces = spaces;

  // common
  static const double gapSpace = miniSpaces;
  static const double sharpCornerRadius = 55.0;
  static const double imageRadius = 5.0;
  static const double bottomPageSpace = 160.0;
  static const double radius = 0.0;
  static const double customButtonRadius = 0.0;

  // navigation bar
  static const double navigationBarHeight = 74.0;
  static const double navigationBarBorderRadius = 46.0;
  static const double navigationBarHorizontalPadding = 8.0;
  static const double navigationBarVerticalPadding = 15.0;
  static const double navigationBarIconHeight = 24.0;
  static const double navigationBarFontSize = 12.0;
  static const double navigationBarLabelSpacing = 5.0;

  /*
  static const double minButtonHeight = 48.0 / 1.5;
  static const double toggleButtonHeight = 48.0 / 1.3;
  static const double toggleButtonRadius = 5.0;
  static const double secondaryButtonBorderWidth = 1.0;

  // floating action
  static const double floatingActionElevation = 4.0;

  // slide able
  static const double slideAbleIconSize = 30.0;

  // tag
  static const double tagCornerRadius = 25.0;

  // border
  static const double borderHeight = 1.0;
  static const double standOutBorderWidth = 2.0;
  static const double thickBorderHeight = 4.0;

  // checkbox
  static const double checkboxSpaces = tinySpaces;
  static const double checkboxIconSize = 18;
  static const double tinyCheckboxIconSize = 12;
  static const double checkboxBorderWidth = 2.0;

  // radio
  static const double radioSpaces = tinySpaces;
  static const double radioIconSize = 18;
  static const double tinyRadioIconSize = 12;
  static const double radioBorderWidth = 2.0;

  // special input field
  static const double specialInputFieldRadius = 5.0;
  static const double specialInputFieldFontSize = bodyTextFontSize;
  static const double specialInputFieldPadding = 10.0;
  static const double specialInputFieldBorderWidth = 2.0;
  */
}
