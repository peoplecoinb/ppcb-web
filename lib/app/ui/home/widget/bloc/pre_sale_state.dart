part of 'pre_sale_cubit.dart';

sealed class PreSaleState extends Equatable {
  const PreSaleState(this.address);
  final String? address;

  @override
  List<Object?> get props => <Object?>[address];
}

final class PreSaleInitial extends PreSaleState {
  const PreSaleInitial() : super(null);
}

final class PreSaleNotAvailableNetwork extends PreSaleState {
  const PreSaleNotAvailableNetwork(super.address);
}

final class PreSaleConnected extends PreSaleState {
  const PreSaleConnected(super.address);
}
