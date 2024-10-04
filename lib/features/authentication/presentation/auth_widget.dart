import 'package:chat_settings/features/authentication/bloc/bloc_authentication.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_event_auth.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/helper/integration_key.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const Text("Please Click On Sign In First"),
        ElevatedButton(
          key: const Key(IntegrationKey.signInButton),
          onPressed: (){
          getIt<AuthBloc>().add(LoadAuth());
        }, child: const Text("Sign In")),
        // Text("${getIt<AuthLoaded>().token}")
      ],
    );
  }
}