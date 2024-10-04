import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/design/theme.dart';
import 'package:chat_settings/custom_widgets/custom_bloc_builder.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc_event.dart';
import 'package:chat_settings/features/settings/chat_settings/bloc/bloc_state.dart';
import 'package:chat_settings/features/settings/chat_settings/presentation/widget/header_widget.dart';
import 'package:chat_settings/features/settings/conversation_depth/presentation/conversation_depth_widget.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_language_style.dart';
import 'package:chat_settings/features/settings/language_style/presentation/language_style_widget.dart';
import 'package:chat_settings/features/settings/usage_limit/presentation/usage_limit_widget.dart';
import 'package:chat_settings/helper/integration_key.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatSettingsScreen extends StatelessWidget {
  const ChatSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    
    return  Scaffold(
      key: const Key(IntegrationKey.screenSettings),
      appBar: AppBar(title:  Text("Custom Settings",style: CustomTextStyle.heading2StyleMedium(),),centerTitle: true,
      
      actions: [ 
      
        BlocBuilder<ChatSettingsBloc,ChatSettingsState>(builder:  (context,state) {
            return GestureDetector(
              onTap: (){
                getIt<ChatSettingsBloc>().add(UpdateChatSettings());
              },
              child: const Text("Save",style: TextStyle(color: Colors.blueAccent),));
          }
        ),
       gapW12
      ],
      ),
      body: CustomBlocBuilder(bloc: getIt<ChatSettingsBloc>()..add(LoadChatSettings())
      ,isLoading: (state)=> state is ChatSettingsLoading,
       isError: (state)=> state is ChatSettingsError,
    errorMessage: (state)=> state is ChatSettingsError?state.message:"",
    builder: (context,state){
        if(state is ChatSettingsLoaded){
      
            return Padding(padding:const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  gapH12,
                  const HeaderWidget(),
                  gapH12,
                  const UsageLimitWidget(),
                 gapH12,
                  BlocProvider(
                    create: (context)=>getIt<LangaugeStyleBloc>(),
                    child: const LanguageStyleWidget()),
                  // gapH12,
                  // Text("Chat Default Language ${state.chatSettings.languageSettings?.defaultChatbotLanguage}",style: CustomTextStyle.heading1StyleBold(),),
                  // Text("Call Default Language ${state.chatSettings.languageSettings?.defaultCallbotLanguage}",style: CustomTextStyle.heading1StyleBold(),),
                   gapH12,
                  Text("Engagement Controls",style: CustomTextStyle.heading1StyleBold(),),
                  gapH12,
                  const ConversationDepthWidget(),
                  gapH12,
                  Center(
                    child: GestureDetector(
                      onTap: (){
                    getIt<ChatSettingsBloc>().add(ResetChatSettings());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding:const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.black
                        ),
                        child: Text("Reset Default Settings",style: CustomTextStyle.heading3StyleSemiBold().copyWith(
                          color: Colors.white
                        ),))),
                  ),
                 
                ],
              ),
            ),
            );
            }

            return Text("No Data Available");
    },
    ),
    );
  }
}