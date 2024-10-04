import 'package:bloc_test/bloc_test.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_authentication.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_event_auth.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc_event.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc_state.dart';
import 'package:chat_settings/helper/integration_key.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:mockito/mockito.dart';
import 'package:chat_settings/main.dart' as app;
class MockAuthBloc extends MockBloc<AuthEvent,AuthState> implements AuthBloc{}
class MockChatSettingsBloc extends MockBloc<ChatSettingsEvent,ChatSettingsState> implements ChatSettingsBloc{}

void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("IntegrationTest", () {
    late AuthBloc authBloc;
    late ChatSettingsBloc chatSettingsBloc;
    setUp(() {
      authBloc=MockAuthBloc();
      chatSettingsBloc=MockChatSettingsBloc();
    }
    
    );
    testWidgets("SignInOpenSettings", (tester) async{
   app.initializeApp();
   await tester.pumpAndSettle(); 
   await tester.pumpWidget(
    BlocProvider(create: (context)=> authBloc,
    child:const MyApp()
   ));
    await tester.pumpAndSettle(); 
    
    final signInButton = find.byKey(const ValueKey(IntegrationKey.signInButton));
    await tester.tap(signInButton);
      await tester.pumpAndSettle(); 
        await Future.delayed(Duration(seconds: 5));
      final openSettingsButton = find.byKey(const ValueKey(IntegrationKey.openSettings));
    await tester.tap(openSettingsButton);
        await tester.pumpAndSettle(); 
        expect(find.byKey(const Key(IntegrationKey.screenSettings)), findsOneWidget);
        // expect(find.byKey(const Key(IntegrationKey.limitWidget)), findsOneWidget);
    } 
    );
   });
}