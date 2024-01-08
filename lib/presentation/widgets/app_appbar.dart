import 'package:nomixe/config/app_theme.dart';
import 'package:nomixe/config/app_theme.dart';
import 'package:flutter/material.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  bool isTitleText;
  Widget titleWidget;
  bool leading;
  bool centerTitle;
  Color bgColor;
  List<Widget> actions;
  Widget flexibleSpace;
  final double toolbarHeight;
  double elevation;

  AppAppbar(
      {Key? key,
      this.title,
      this.bgColor = AppTheme.whiteColor,
      this.leading = true,
      this.centerTitle = false,
      this.actions = const <Widget>[],
      this.isTitleText = true,
      this.titleWidget = const SizedBox.shrink(),
      this.toolbarHeight = 65,
      this.flexibleSpace = const SizedBox.shrink(),
      this.elevation = 0.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 0.12,
      leading: leading
          ? GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.arrow_back,
                color: AppTheme.primaryColor,
                size: 30,
              ),
            )
          : null,
      iconTheme: const IconThemeData(
        color: AppTheme.blackColor,
      ),
      elevation: elevation,
      automaticallyImplyLeading: leading,
      centerTitle: centerTitle,
      backgroundColor: bgColor,
      toolbarHeight: toolbarHeight,
      flexibleSpace: flexibleSpace,
      title: title != null && isTitleText
          ? Text("$title", style: Theme.of(context).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold))
          : titleWidget,
      actions: actions,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
