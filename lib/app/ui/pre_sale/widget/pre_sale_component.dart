import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';
import '../../../extensions/extensions.dart';
import '../../home/widget/home_presale_connect.dart';

class PreSaleComponent extends StatelessWidget {
  const PreSaleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        width: 500,
        child: PreSaleConnect(),
      ),
    );
  }

  Widget buildClock() {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: HexColor.fromHex('#28272F'),
        border: Border.all(
          color: AppColors.warring,
          width: 1.5,
        ),
        gradient: LinearGradient(
          colors: <Color>[
            HexColor.fromHex('#28272F'),
            HexColor.fromHex('#040404'),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: HexColor.fromHex('#EA245A').withOpacity(0.7),
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: const Offset(10, -10),
          ),
          BoxShadow(
            color: HexColor.fromHex('#6A38F5').withOpacity(0.7),
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: const Offset(-10, -10),
          ),
          BoxShadow(
            color: HexColor.fromHex('#EB8145').withOpacity(0.7),
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: const Offset(10, 10),
          ),
          BoxShadow(
            color: HexColor.fromHex('#1E99FE').withOpacity(0.3),
            blurRadius: 20,
            spreadRadius: 0.5,
            offset: const Offset(-10, 10),
          ),
        ],
      ),
      child: Center(
        child: TimerCountdown(
          endTime: DateTime(2024, 6, 8, 23, 23, 59).toUtc(),
          timeTextStyle: AppTextStyles.getHeadingStyle(AppTextStyles.zendots),
          descriptionTextStyle: AppTextStyles.getXlStyle(AppTextStyles.bold),
        ),
      ),
    );
  }

  Widget buildPresaleHeader() {
    return IntrinsicWidth(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'presale_title'.tr,
            style: AppTextStyles.getHeadingStyle(AppTextStyles.zendots).copyWith(fontSize: 50),
            textAlign: TextAlign.start,
          ),
          // const SizedBox(
          //   height: 20,
          // ),
          // Text(
          //   'presale_description'.tr,
          //   style: AppTextStyles.get2xlStyle(AppTextStyles.zendots).copyWith(color: AppColors.gray.shade400),
          //   textAlign: TextAlign.start,
          // ),
          const SizedBox(
            height: 40,
          ),
          buildClock(),
        ],
      ),
    );
  }
}
