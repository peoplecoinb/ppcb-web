import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../custom_outline_button.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    super.key,
    this.isFailed = false,
    this.rotateAngle = 0,
    required this.icon,
    required this.title,
    required this.description,
    this.showTwoBtn = false,
    this.keyCancel,
    this.keyConfirm,
  });

  final bool isFailed;
  final bool showTwoBtn;
  final double rotateAngle;
  final IconData icon;
  final String title;
  final String? keyCancel;
  final String? keyConfirm;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      backgroundColor: AppColors.gray.withOpacity(0.9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(20),
        child: Stack(clipBehavior: Clip.none, children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: -55,
            child: Container(
              height: 80,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(color: isFailed ? AppColors.error : Theme.of(context).primaryColor, shape: BoxShape.circle),
              child: Transform.rotate(angle: rotateAngle, child: Icon(icon, size: 40, color: Colors.white)),
            ),
          ),
          Container(
            width: Get.width,
            padding: const EdgeInsets.only(top: 40),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(
                title.tr,
                style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                description.tr,
                textAlign: TextAlign.center,
                style: AppTextStyles.getLgStyle(AppTextStyles.zendots),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: !showTwoBtn,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomOutlinedButton(
                    title: 'OK'.tr,
                    action: Get.back,
                    backgroundColor: Colors.green,
                    borderColor: Colors.green,
                    textStyle: AppTextStyles.getLgStyle(AppTextStyles.zendots),
                  ),
                ),
              ),
              Visibility(
                visible: showTwoBtn,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomOutlinedButton(
                        title: keyCancel ?? 'no',
                        backgroundColor: AppColors.error,
                        borderColor: AppColors.error,
                        action: () => Get.back(result: false),
                        textStyle: AppTextStyles.getLgStyle(AppTextStyles.zendots),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomOutlinedButton(
                        title: keyConfirm ?? 'yes',
                        action: () => Get.back(result: true),
                        backgroundColor: AppColors.primary,
                        borderColor: AppColors.primary,
                        textStyle: AppTextStyles.getLgStyle(AppTextStyles.zendots),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
