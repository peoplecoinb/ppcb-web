import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../widgets/hover_text.dart';

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.7,
      height: Get.height,
      color: AppColors.black,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16).copyWith(right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'PPCB',
                    style: AppTextStyles.get2xlPlusStyle(
                      AppTextStyles.zendots.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).closeEndDrawer();
                    },
                    icon: const Icon(Icons.cancel_presentation_rounded),
                    color: AppColors.primary,
                    iconSize: 30,
                  )
                ],
              ),
            ),
            Divider(
              height: 0,
              color: AppColors.white,
            ),
            buildMenu()
          ],
        ),
      ),
    );
  }

  Widget buildMenu(){
    return Column(
      children: <Widget>[
          buildMenuItem('home'),
          buildMenuItem('navigation_white_paper'),
          buildMenuItem('fund'),
          buildMenuItem('road_map'),
          buildMenuItem('team'),
          buildMenuItem('contract'),
      ],
    );
  }

  Widget buildMenuItem(String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16),
          child: HoverText(
            text: text.tr.toUpperCase(),
            style: AppTextStyles.getXsStyle(
              AppTextStyles.zendots.copyWith(
                color: AppColors.white,
              ),
            ),
            hoverStyle: AppTextStyles.getXsStyle(
              AppTextStyles.zendots.copyWith(
                color: AppColors.primary,
              ),
            ),
          ),
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
