part of 'metamask_cubit.dart';

sealed class MetamaskState extends Equatable {
  const MetamaskState({this.account});
  final String? account;

  @override
  List<Object?> get props => <Object?>[account];
}

final class MetamaskInitial extends MetamaskState {
  const MetamaskInitial() : super(account: null);
}

final class MetamaskConnected extends MetamaskState {
  const MetamaskConnected({required String account}) : super(account: account);
}
