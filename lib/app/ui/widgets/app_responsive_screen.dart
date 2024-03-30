import 'package:flutter/material.dart';

mixin AppResponsiveScreen{

  Widget buildResponsiveScreen(BuildContext context){
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      final double maxWidth = MediaQuery.of(context).size.width;
      if(maxWidth <= 877)
        return buildMobile(context);
      else if(maxWidth <= 1091)
        return buildTablet(context);
      return buildDesktop(context);
    });
  }

  Widget buildMobile(BuildContext context);
  Widget buildTablet(BuildContext context);
  Widget buildDesktop(BuildContext context);
}