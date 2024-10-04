import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/features/connectivity/bloc/connectivity_event.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../bloc/connectivity_bloc.dart';

class NoInternetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.signal_wifi_off,
                size: 80,
                color: Colors.grey[700],
              ),
              gapH20,
              Text(
                'No Internet Connection',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              gapH12,
              Text(
                'Please check your network settings',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              gapH32,
              ElevatedButton(
                onPressed: () {
                  getIt<ConnectivityBloc>().add(CheckConnectivity());
                },
                child: Text('Retry'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _retryConnection(BuildContext context) {
    final connectivityBloc = BlocProvider.of<ConnectivityBloc>(context);
    // connectivityBloc.add(CheckConnectivity());
  }
}
