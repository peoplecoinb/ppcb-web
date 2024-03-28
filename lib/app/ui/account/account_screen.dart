import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import 'bloc/account_cubit.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  final AccountCubit accountCubit = Get.put(AccountCubit());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<AccountCubit, AccountState>(
          bloc: accountCubit,
          builder: (BuildContext context, AccountState state) {
            if (state is AccountInitial) {
              return buildFormRequest();
            } else {
              return Text(
                state.data.toString(),
                style: AppTextStyles.getHeadingStyle(AppTextStyles.bold),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildFormRequest() {
    return Column(
      children: <Widget>[
        const SizedBox(height: 20),
        const Text('ID'),
        const SizedBox(height: 10),
        TextField(
          controller: idController,
          decoration: const InputDecoration(
            hintText: 'ID',
          ),
        ),
        const SizedBox(height: 20),
        const Text('Value'),
        TextField(
          controller: valueController,
          decoration: const InputDecoration(
            hintText: 'Value',
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            accountCubit.postData(<String, dynamic>{
              'id': int.parse(idController.text),
              'value': valueController.text,
            });
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    Get.delete<AccountCubit>();
    super.dispose();
  }
}
