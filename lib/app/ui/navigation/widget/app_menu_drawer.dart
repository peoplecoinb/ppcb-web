import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../generated/l10n.dart';
import '../../../constants/constants.dart';
import '../../../routes/app_routes.dart';
import '../../widgets/hover_text.dart';

class AppMenuDrawer extends StatefulWidget {
  const AppMenuDrawer({super.key});

  @override
  State<AppMenuDrawer> createState() => _AppMenuDrawerState();
}

class _AppMenuDrawerState extends State<AppMenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height,
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

  Widget buildMenu() {
    return Column(
      children: <Widget>[
        buildMenuItem(
          S.current.home,
          action: () {
            context.go(Routes.home.route);
          },
        ),
        buildMenuItem(
          S.current.navigation_white_paper,
          action: () {
            context.go(Routes.whitePaper.route);
          },
        ),
        buildMenuItem(S.current.fund),
        buildMenuItem(S.current.road_map),
        buildMenuItem(S.current.team),
        buildMenuItem(S.current.contact),
      ],
    );
  }

  Widget buildMenuItem(String text, {Function()? action}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Scaffold.of(context).closeEndDrawer();
            if (action != null) {
              action();
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: HoverText(
              text: text.toUpperCase(),
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
        ),
        const Divider(
          height: 0,
        ),
      ],
    );
  }
}
