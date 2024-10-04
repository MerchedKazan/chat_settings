import 'package:bloc_test/bloc_test.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_event_auth.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/features/authentication/data/auth_service.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_authentication.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

// class MockAuthService extends Mock implements AuthService {}

// void main() {
//   group('AuthBloc Tests', () {
//     late MockAuthService mockAuthService;
//     late AuthBloc authBloc;

//     setUp(() {
//       mockAuthService = MockAuthService();
//       authBloc = AuthBloc(mockAuthService);
//     });

//     blocTest<AuthBloc, AuthState>(
//   'emits [AuthLoading, AuthLoaded] when successful login',
//   build: () {
//     final mockAuthService = MockAuthService();
//     when(mockAuthService.signIn()).thenAnswer((_) async => {'token': 'fake_token'});
//     return AuthBloc(mockAuthService);
//   },
//   act: (bloc) => bloc.add(LoadAuth()),
//   expect: () => [AuthLoading(), AuthLoaded('fake_token')],
// );

//     // blocTest<AuthBloc, AuthState>(
//     //   'emits [AuthLoading, AuthLoaded] when successful login',
//     //   build: () => authBloc,
//     //   act: (bloc) {
//     //     when(mockAuthService.signIn()).thenAnswer((_) async => {'token': 'fake_token'});
//     //     bloc.add(LoadAuth());
//     //   },
//     //   expect: () => [AuthLoading(), AuthLoaded('fake_token')],
//     // );

//     tearDown(() {
//       authBloc.close();
//     });
//   });
// }


class MockAuthService extends Mock implements AuthService {}

void main() {
  group('AuthBloc Tests', () {
    late AuthService mockAuthService;
    late AuthBloc authBloc;

    setUp(() {
      mockAuthService = MockAuthService();
      authBloc = AuthBloc(mockAuthService);
      when(mockAuthService.signIn()).thenAnswer((_) async => {'token': 'dummy_token'});
    });

    blocTest<AuthBloc, AuthState>(
      'emits [AuthLoading, AuthLoaded] when successful login',
      build: () => authBloc,
      act: (bloc) => bloc.add(LoadAuth()),
      expect: () => [AuthLoading(), AuthLoaded('dummy_token')],
    );

    tearDown(() {
      authBloc.close();
    });
  });
}

