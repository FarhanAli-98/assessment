import 'dart:io';

import 'package:nomixe/config/app_theme.dart';
import 'package:nomixe/utils/base_helper.dart';
import 'package:nomixe/utils/extensions/context.extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../../utils/dimensions.dart';

class InviteTile extends StatelessWidget {
  final String? title;
  final String? link;

  const InviteTile({
    Key? key,
    this.title,
    this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            dense: true,
            title: Text(
              title!,
              style: context.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              link!,
              style: context.bodyMedium?.copyWith(
                color: AppTheme.labelHintColor,
                fontWeight: FontWeight.w300,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: link!,
                      ),
                    );
                    if (Platform.isIOS) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                        'Copied to clipboard',
                        style: context.bodyMedium?.copyWith(color: AppTheme.whiteColor),
                      )));
                    }
                  },
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF4F4F4),
                    child: Icon(
                      Icons.copy,
                      color: AppTheme.primaryColor,
                      size: Dimensions.iconSize,
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Share.share(link!);
                  },
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFFF4F4F4),
                    child: Icon(
                      CupertinoIcons.share,
                      color: AppTheme.primaryColor,
                      size: Dimensions.iconSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: AppTheme.fieldOutlineColor,
            thickness: 1.25,
            height: 0,
          ),
        ],
      ),
    );
  }
}
