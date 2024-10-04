import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'connectivity_event.dart';
import 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final Connectivity connectivity;
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  ConnectivityBloc(this.connectivity) : super(ConnectivityInitial()) {
    _connectivitySubscription = connectivity.onConnectivityChanged.listen(
      (result) {
        add(ConnectivityChanged(result.first));
      },
    );

    on<ConnectivityChanged>((event, emit) {
      if (event.connectivityResult == ConnectivityResult.none) {
        emit(ConnectivityOffline());
      } else {
        emit(ConnectivityOnline());
      }
    });

        on<CheckConnectivity>((event, emit) async {
      var connectivityResult = await connectivity.checkConnectivity();
      if (connectivityResult.first == ConnectivityResult.none) {
        emit(ConnectivityOffline());
      } else {
        emit(ConnectivityOnline());
      }
    });

  }
  

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
