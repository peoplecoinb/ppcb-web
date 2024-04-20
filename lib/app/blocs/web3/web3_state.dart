part of 'web3_cubit.dart';

sealed class Web3State extends Equatable {
  const Web3State({this.account});
  final String? account;

  @override
  List<Object?> get props => <Object?>[account];
}

final class Web3Initial extends Web3State {
  const Web3Initial() : super(account: null);
}

final class Web3Connected extends Web3State {
  const Web3Connected({required String account}) : super(account: account);
}
