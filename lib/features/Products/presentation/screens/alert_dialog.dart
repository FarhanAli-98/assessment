import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nomixe/common/theme/app_colors.dart';
import 'package:nomixe/common/theme/test_styles.dart';

class DialogUtil {
  static void showDeleteDialog({
    required BuildContext context,
    required String confirmButtonText,
    required String cancelButtonText,
    required String bodyText,
    required String bodySubText,
    required VoidCallback onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 50.0,
            vertical: 15.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                15.0,
              ),
              color: Colors.white,
            ),
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.31,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 24.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/Delete.svg",
                    colorFilter: const ColorFilter.mode(AppColors.deleteBlueColor, BlendMode.srcIn),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      bodyText,
                      style: AppTextStyles.h2.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      bodySubText,
                      style: AppTextStyles.body.copyWith(fontWeight: FontWeight.w500, color: AppColors.lightGrey),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: AppColors.black.withOpacity(0.4),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            onPressed: onConfirm,
                            child: Text(
                              cancelButtonText,
                              style: AppTextStyles.bodyLg.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          TextButton(
                            onPressed: onConfirm,
                            child: Text(
                              confirmButtonText,
                              style: AppTextStyles.bodyLg.copyWith(
                                color: AppColors.deleteColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
