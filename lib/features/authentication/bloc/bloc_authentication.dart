import 'package:chat_settings/features/authentication/bloc/bloc_event_auth.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/features/authentication/bloc/token_manager.dart';
import 'package:chat_settings/features/authentication/data/auth_service.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
final AuthService authService;
  AuthBloc(this.authService):super(AuthInitial()){
    on<LoadAuth>(_onLoadAuth);
  }
  void _onLoadAuth(LoadAuth event,Emitter<AuthState> emitter)async{
    emit(AuthLoading());
    try{
      var data=await authService.signIn();
      getIt<TokenManager>().saveToken(data['token']);
      emit(AuthLoaded(data['token']));
    }catch(e){
      emit(AuthError(e.toString()));
    }
  }
}

