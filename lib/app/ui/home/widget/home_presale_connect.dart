// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member, avoid_redundant_argument_values

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
import 'package:get_it/get_it.dart';
// import 'package:input_formatter/input_formatter.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/web3/web3_cubit.dart';
import '../../../constants/constants.dart';
import '../../../extensions/hex_color.dart';
import '../../widgets/app_responsive_screen.dart';
import '../../widgets/custom_outline_button.dart';
import 'bloc/pre_sale_cubit.dart';

class PreSaleConnect extends StatefulWidget{
  const PreSaleConnect({super.key});

  @override
  State<PreSaleConnect> createState() => _PreSaleConnectState();
}

class _PreSaleConnectState extends State<PreSaleConnect> with AppResponsiveScreen {

  @override
  void initState() {
    if(!GetIt.I.isRegistered<PreSaleCubit>()){
      GetIt.I.registerSingleton(PreSaleCubit());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return buildResponsiveScreen(context);
  }

  @override
  Widget buildDesktop(BuildContext context) {
    return const _PreSaleConnectDesktop();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const _PreSaleConnectMobile();
  }

  @override
  Widget buildTablet(BuildContext context) {
    return const _PreSaleConnectDesktop();
  }
}

class _PreSaleConnectDesktop extends StatefulWidget {
  const _PreSaleConnectDesktop();

  @override
  State<_PreSaleConnectDesktop> createState() => _PreSaleConnectDesktopState();
}

class _PreSaleConnectDesktopState extends State<_PreSaleConnectDesktop> {
  final TextEditingController _usdtController = TextEditingController();
  final TextEditingController _ppcbController = TextEditingController();
  final PreSaleCubit _preSaleCubit = GetIt.I<PreSaleCubit>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      child: buildBody(),
    );
  }

  Widget buildProgress() {
    return RoundedProgressBar(
      height: 20,
      borderRadius: BorderRadius.circular(20),
      percent: 0 / 100000000 * 100,
      style: RoundedProgressBarStyle(
        colorBorder: HexColor.fromHex('#1C1D33'),
        backgroundProgress: HexColor.fromHex('#1C1D33'),
        colorProgressDark: AppColors.primary,
        colorProgress: AppColors.primary,
        borderWidth: 8,
      ),
      childCenter: Text(
        '0 PPCB / 100,000,000 PPCB',
        textAlign: TextAlign.center,
        style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Stage 1'.toUpperCase(),
          style: AppTextStyles.get2xlStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          r'(1 USDT = 5000 PPCB)',
          style: AppTextStyles.getSmStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
        ),
        const SizedBox(
          height: 16,
        ),
        buildProgress(),
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
                'USDT ${S.current.presale_you_pay}',
                AppImages.png('usdt_icon'),
                _usdtController,
                decimalDigits: 0,
                onChanged: (String value) {
                  final String usdtText = value.replaceAll(',', '');
                  final double usdt = double.tryParse(usdtText) ?? 0;
                  _ppcbController.text = (usdt / 0.0002).toStringAsFixed(0);
                },
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: buildInput(
                'PPCB ${S.current.presale_you_receive}',
                AppImages.png('logo'),
                _ppcbController,
                decimalDigits: 0,
                onChanged: (String value) {
                  final String ppcbText = value.replaceAll(',', '');
                  final double ppcb = double.tryParse(ppcbText) ?? 0;
                  _usdtController.text = (ppcb * 0.0002).toStringAsFixed(2);
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

  Widget buildUSDT() {
    return Container(
      width: MediaQuery.of(context).size.width,
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
                color: AppColors.primary,
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
      bloc: GetIt.I<Web3Cubit>(),
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
              CustomOutlinedButton(
                title: (state is! PreSaleInitial) ? S.current.presale_buy : S.current.presale_component_connenct,
                action: () {
                  if (state is! PreSaleInitial)
                    _preSaleCubit.buy(context);
                  else
                    _preSaleCubit.connect();
                },
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                radius: 10,
                backgroundColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
                textStyle: AppTextStyles.getXlStyle(AppTextStyles.zendots),
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

class _PreSaleConnectMobile extends StatefulWidget {
  const _PreSaleConnectMobile();

  @override
  State<_PreSaleConnectMobile> createState() => _PreSaleConnectMobileState();
}

class _PreSaleConnectMobileState extends State<_PreSaleConnectMobile> {
  final TextEditingController _usdtController = TextEditingController();
  final TextEditingController _ppcbController = TextEditingController();
  final PreSaleCubit _preSaleCubit = GetIt.I<PreSaleCubit>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 430,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.25),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.primary,
          width: 1.5,
        ),
      ),
      child: buildBody(),
    );
  }

  Widget buildProgress() {
    return RoundedProgressBar(
      height: 20,
      borderRadius: BorderRadius.circular(20),
      percent: 0 / 100000000 * 100,
      style: RoundedProgressBarStyle(
        colorBorder: HexColor.fromHex('#1C1D33'),
        backgroundProgress: HexColor.fromHex('#1C1D33'),
        colorProgressDark: AppColors.primary,
        colorProgress: AppColors.primary,
        borderWidth: 8,
      ),
      childCenter: Text(
        '0 PPCB / 100,000,000 PPCB',
        textAlign: TextAlign.center,
        style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
      ),
    );
  }

  Widget buildBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Stage 1'.toUpperCase(),
          style: AppTextStyles.getLgStyle(AppTextStyles.zendots),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          r'(1 USDT = 5000 PPCB)',
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.primary),
        ),
        const SizedBox(
          height: 16,
        ),
        buildProgress(),
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
                'USDT ${S.current.presale_you_pay}',
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
                'PPCB ${S.current.presale_you_receive}',
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
          height: 16,
        ),
        buildButton(),
      ],
    );
  }

  Widget buildUSDT() {
    return Container(
      width: MediaQuery.of(context).size.width,
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
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'USDT (BEP20)',
            style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
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
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
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
          style: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0).copyWith(right: 16),
              child: Image.asset(
                icon,
                width: 15,
                height: 15,
              ),
            ),
            hintText: hintText,
            hintStyle: AppTextStyles.getXsStyle(AppTextStyles.zendots).copyWith(color: AppColors.white),
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
                color: AppColors.primary,
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
      bloc: GetIt.I<Web3Cubit>(),
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
              CustomOutlinedButton(
                title: (state is! PreSaleInitial) ? S.current.presale_buy : S.current.presale_component_connenct,
                action: () {
                  if (state is! PreSaleInitial)
                    _preSaleCubit.buy(context);
                  else
                    _preSaleCubit.connect();
                },
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
                radius: 10,
                backgroundColor: AppColors.primary,
                borderColor: AppColors.primary,
                textColor: AppColors.white,
                textStyle: AppTextStyles.getXsStyle(AppTextStyles.zendots),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildAccount(String? account) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (account != null) ...<Widget>[
          Text(
            account,
            style: AppTextStyles.getXsStyle(AppTextStyles.zendots),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 4,
              backgroundColor: account != null ? AppColors.success : AppColors.error,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              (account != null) ? 'Wallet connected' : 'Wallet disconnected',
              style: AppTextStyles.getXsStyle(AppTextStyles.zendots)
                  .copyWith(color: account != null ? AppColors.success : AppColors.error),
            ),
          ],
        ),
      ],
    );
  }
}
