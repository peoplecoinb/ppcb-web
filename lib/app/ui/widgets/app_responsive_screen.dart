import 'package:flutter/material.dart';

import '../../constants/app_values.dart';

mixin AppResponsiveScreen {
  Widget buildResponsiveScreen(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
      final double maxWidth = MediaQuery.of(context).size.width;

      if (maxWidth <= MOBILE_PAGE_MAX_WIDTH)
        return buildMobile(context);
      else if (maxWidth <= TABLET_PAGE_MAX_WIDTH)
        return buildTablet(context);
      return buildDesktop(context);
    });
  }

  Widget buildMobile(BuildContext context);
  Widget buildTablet(BuildContext context);
  Widget buildDesktop(BuildContext context);
}
