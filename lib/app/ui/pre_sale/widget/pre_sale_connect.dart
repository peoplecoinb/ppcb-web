// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, avoid_redundant_argument_values

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
// import 'package:input_formatter/input_formatter.dart';

import '../../../blocs/web3/web3_cubit.dart';
import '../../../constants/constants.dart';
import '../../../extensions/hex_color.dart';
import '../../widgets/custom_outline_button.dart';
import '../bloc/pre_sale_cubit.dart';

class PreSaleConnect extends StatefulWidget {
  const PreSaleConnect({super.key});

  @override
  State<PreSaleConnect> createState() => _PreSaleConnectState();
}

class _PreSaleConnectState extends State<PreSaleConnect> {
  final TextEditingController _usdtController = TextEditingController();
  final TextEditingController _ppcbController = TextEditingController();
  final PreSaleCubit _preSaleCubit = Get.put(PreSaleCubit());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: <Color>[
            HexColor.fromHex('#28272F').withOpacity(0.7),
            HexColor.fromHex('#040404').withOpacity(0.7),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: Border.all(
          color: AppColors.gray,
          width: 1.5,
        ),
      ),
      child: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Text(
          'presale_component_title'.tr,
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          r'1 PPCB = $ 0.0002',
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 32,
        ),
        buildProgress(),
        const SizedBox(
          height: 16,
        ),
        Text(
          '9,737,759 PPCB / 3,000,000,000 PPCB',
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 32,
        ),
        buildUSDT(),
        const SizedBox(
          height: 32,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: buildInput(
                'USDT ${'presale_you_pay'.tr}',
                AppImages.png('usdt_icon'),
                _usdtController,
                onChanged: (String value) {
                  if (value.isNotEmpty) {
                    final String usdtText = value.replaceAll(',', '');
                    final double usdt = double.parse(usdtText);
                    _ppcbController.text = (usdt / 0.0002).toStringAsFixed(0);
                  }
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: buildInput(
                'PPCB ${'presale_you_receive'.tr}',
                AppImages.png('logo'),
                _ppcbController,
                decimalDigits: 0,
                onChanged: (String value) {
                  if (value.isNotEmpty) {
                    final String ppcbText = value.replaceAll(',', '');
                    final double ppcb = double.parse(ppcbText);
                    _usdtController.text = (ppcb * 0.0002).toStringAsFixed(2);
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        buildButton(),
      ],
    );
  }

  Widget buildProgress() {
    return PhysicalModel(
      borderRadius: BorderRadius.circular(20),
      color: AppColors.gray,
      elevation: 2,
      shadowColor: Colors.white,
      child: LinearProgressIndicator(
        value: 0.6666,
        valueColor: AlwaysStoppedAnimation<Color>(HexColor.fromHex('#509E7C')),
        borderRadius: BorderRadius.circular(20),
        minHeight: 30,
      ),
    );
  }

  Widget buildUSDT() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.gray,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.asset(
            AppImages.png('usdt_icon'),
            width: 80,
            height: 80,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'USDT (BEP20)',
            style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
          )
        ],
      ),
    );
  }

  Widget buildInput(
    String title,
    String icon,
    TextEditingController controller, {
    ValueChanged<String>? onChanged,
    String hintText = '0',
    int decimalDigits = 2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          inputFormatters: <TextInputFormatter>[
            CurrencyTextInputFormatter.currency(symbol: '', decimalDigits: decimalDigits)
          ],
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0).copyWith(right: 16),
              child: Image.asset(
                icon,
                width: 25,
                height: 25,
              ),
            ),
            hintText: hintText,
            hintStyle: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.gray,
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.warring,
                width: 1.5,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: AppColors.error,
                width: 1.5,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildButton() {
    return BlocListener<Web3Cubit, Web3State>(
      bloc: Get.find<Web3Cubit>(),
      listener: (BuildContext context, Web3State state) {
        if (state is Web3Connected) {
          _preSaleCubit.emit(PreSaleConnected(state.account));
        } else {
          _preSaleCubit.emit(const PreSaleInitial());
        }
      },
      child: BlocBuilder<PreSaleCubit, PreSaleState>(
        bloc: _preSaleCubit,
        builder: (BuildContext context, PreSaleState state) {
          return Column(
            children: <Widget>[
              buildAccount(state.address),
              const SizedBox(
                height: 32,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: <Color>[Colors.deepPurple, AppColors.primary.shade600],
                  ),
                ),
                child: CustomOutlinedButton(
                  title: (state is! PreSaleInitial) ? 'presale_buy'.tr : 'presale_component_connenct'.tr,
                  action: () {
                    if (state is! PreSaleInitial)
                      _preSaleCubit.buy();
                    else
                      _preSaleCubit.connect();
                  },
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                  radius: 10,
                  textColor: AppColors.white,
                  backgroundColor: Colors.transparent,
                  borderColor: Colors.transparent,
                  textStyle: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildAccount(String? account) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            account ?? '',
            style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
          ),
        ),
        const SizedBox(
          width: 32,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CircleAvatar(
              radius: 8,
              backgroundColor: account != null ? AppColors.success : AppColors.error,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              (account != null) ? 'Wallet connected' : 'Wallet disconnected',
              style: AppTextStyles.getSmStyle(AppTextStyles.zendots)
                  .copyWith(color: account != null ? AppColors.success : AppColors.error),
            ),
          ],
        ),
      ],
    );
  }
}
