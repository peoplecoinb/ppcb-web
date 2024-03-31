part of 'account_cubit.dart';

sealed class AccountState extends Equatable {
  const AccountState({required this.data});
  final dynamic data;

  @override
  List<Object> get props => <Object>[];
}

class AccountInitial extends AccountState {
  const AccountInitial() : super(data: null);
}

class AccountResult extends AccountState {
  const AccountResult({required super.data});
}
