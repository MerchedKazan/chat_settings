import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

abstract class ConnectivityEvent extends Equatable{
  @override
  List<Object> get props=>[];
}

class ConnectivityChanged extends ConnectivityEvent{
  final ConnectivityResult connectivityResult;
  ConnectivityChanged(this.connectivityResult);
  @override
  List<Object> get props=> [connectivityResult];
}
class CheckConnectivity extends ConnectivityEvent{}