import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../constants/constants.dart';
import '../../ui.dart';

class AppDialog extends StatelessWidget with AppResponsiveScreen{
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
    return buildResponsiveScreen(context);
  }
  
  @override
  Widget buildDesktop(BuildContext context) {
    return _AppDialogDesktop(
      isFailed: isFailed,
      rotateAngle: rotateAngle,
      icon: icon,
      title: title,
      description: description,
      showTwoBtn: showTwoBtn,
      keyCancel: keyCancel,
      keyConfirm: keyConfirm,
    );
  }
  
  @override
  Widget buildMobile(BuildContext context) {
    return _AppDialogMobile(
      isFailed: isFailed,
      rotateAngle: rotateAngle,
      icon: icon,
      title: title,
      description: description,
      showTwoBtn: showTwoBtn,
      keyCancel: keyCancel,
      keyConfirm: keyConfirm,
    );
  }
  
  @override
  Widget buildTablet(BuildContext context) {
    return _AppDialogDesktop(
      isFailed: isFailed,
      rotateAngle: rotateAngle,
      icon: icon,
      title: title,
      description: description,
      showTwoBtn: showTwoBtn,
      keyCancel: keyCancel,
      keyConfirm: keyConfirm,
    );
  }
}

class _AppDialogDesktop extends StatelessWidget {
  const _AppDialogDesktop({
    // ignore: unused_element
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
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 40),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(
                title,
                style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyles.getLgStyle(AppTextStyles.zendots),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: !showTwoBtn,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomOutlinedButton(
                    title: 'OK',
                    action: context.pop,
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
                        action: () => context.pop(false),
                        textStyle: AppTextStyles.getLgStyle(AppTextStyles.zendots),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomOutlinedButton(
                        title: keyConfirm ?? 'yes',
                        action: () => context.pop(true),
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

class _AppDialogMobile extends StatelessWidget {
  const _AppDialogMobile({
    // ignore: unused_element
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
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 40),
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Text(
                title,
                style: AppTextStyles.getBaseStyle(AppTextStyles.zendots),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.center,
                style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
              ),
              const SizedBox(height: 20),
              Visibility(
                visible: !showTwoBtn,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomOutlinedButton(
                    title: 'OK',
                    action: context.pop,
                    backgroundColor: Colors.green,
                    borderColor: Colors.green,
                    textStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots),
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
                        action: () => context.pop(false),
                        textStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomOutlinedButton(
                        title: keyConfirm ?? 'yes',
                        action: () => context.pop(true),
                        backgroundColor: AppColors.primary,
                        borderColor: AppColors.primary,
                        textStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots),
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
