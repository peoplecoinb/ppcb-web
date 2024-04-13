part of 'metamask_cubit.dart';

sealed class MetamaskState extends Equatable {
  const MetamaskState();

  @override
  List<Object> get props => <Object>[];
}

final class MetamaskInitial extends MetamaskState {}
