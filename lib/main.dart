import 'package:chat_settings/design/colors.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_authentication.dart';
import 'package:chat_settings/features/authentication/bloc/bloc_state_auth.dart';
import 'package:chat_settings/features/authentication/bloc/token_manager.dart';
import 'package:chat_settings/features/authentication/data/auth_service.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_conversation_depth.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/selected_id/select_id_conversation_depth_cubit.dart';
import 'package:chat_settings/features/settings/conversation_depth/data/conversation_depth_service.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_language_style.dart';
import 'package:chat_settings/features/settings/language_style/bloc/selected_id/select_id_language_style_cubit.dart';
import 'package:chat_settings/features/settings/language_style/data/langauge_style_service.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/calls_limit_cubit.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/message_limit_cubit.dart';
import 'package:chat_settings/features/settings/chat_settings/data/chat_setting_service.dart';
import 'package:chat_settings/features/root_screen.dart';
import 'package:chat_settings/features/connectivity/bloc/connectivity_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/route_manager.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;

void setupServiceLocator() {

  getIt.registerLazySingleton<ChatSettingsService>(()=>ChatSettingsService());
  getIt.registerLazySingleton<LanguageStyleSerivce>(()=>LanguageStyleSerivce());
  getIt.registerLazySingleton<ConversationDepthSerivce>(()=>ConversationDepthSerivce());
  getIt.registerLazySingleton<AuthService>(()=>AuthService());
  getIt.registerSingleton<AuthBloc>(AuthBloc(getIt<AuthService>()));
  getIt.registerSingleton<AuthLoaded>(AuthLoaded(""));
  getIt.registerSingleton<ChatSettingsBloc>(ChatSettingsBloc(getIt<ChatSettingsService>()));
  getIt.registerSingleton<LangaugeStyleBloc>(LangaugeStyleBloc(getIt<LanguageStyleSerivce>()));
  getIt.registerSingleton<ConversationDepthBloc>(ConversationDepthBloc(getIt<ConversationDepthSerivce>()));
  getIt.registerSingleton<CallsLimitCubit>(CallsLimitCubit(0));
  getIt.registerSingleton<MessageLimitCubit>(MessageLimitCubit(0));
  getIt.registerSingleton<SelectLanguageStyleCubit>(SelectLanguageStyleCubit(""));
  getIt.registerSingleton<SelectConversationDepthIdCubit>(SelectConversationDepthIdCubit(""));
  getIt.registerSingleton<Connectivity>(Connectivity());
  getIt.registerSingleton<ConnectivityBloc>(ConnectivityBloc(getIt<Connectivity>()));
  getIt.registerSingleton<TokenManager>(TokenManager());
}
void main() async{
 await initializeApp();
  runApp(const MyApp());
}

Future<void> initializeApp()async{
 WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
          providers: [
            BlocProvider<ChatSettingsBloc>(create: 
           (context)=>getIt<ChatSettingsBloc>(),),
            BlocProvider<SelectLanguageStyleCubit>(create: 
           (context)=>getIt<SelectLanguageStyleCubit>(),),
            BlocProvider<SelectConversationDepthIdCubit>(create: 
           (context)=>getIt<SelectConversationDepthIdCubit>(),),
            BlocProvider<ConversationDepthBloc>(create: 
           (context)=>getIt<ConversationDepthBloc>(),),
            BlocProvider<LangaugeStyleBloc>(create: 
           (context)=>getIt<LangaugeStyleBloc>(),),
            BlocProvider<MessageLimitCubit>(create: 
           (context)=>getIt<MessageLimitCubit>(),),
            BlocProvider<CallsLimitCubit>(create: 
           (context)=>getIt<CallsLimitCubit>(),),
            BlocProvider<AuthBloc>(create: 
           (context)=>getIt<AuthBloc>(),),
            BlocProvider<ConnectivityBloc>(create: 
           (context)=>getIt<ConnectivityBloc>(),),
          ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat Setting',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF8FDFF),
          colorScheme: ColorScheme.fromSeed(seedColor: CustomColors.primaryColor),
          useMaterial3: true,
        ),
        home: const RootScreen(),)
    );
  }
}
