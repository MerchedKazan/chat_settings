import 'package:chat_settings/design/gap.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_conversation_depth.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_event_language_event.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_language_style.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_state_language_style.dart';
import 'package:chat_settings/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'custom_bloc_builder.dart';
import '../features/settings/conversation_depth/bloc/conversation_depth/bloc_event_conversation_depth.dart';
import '../features/settings/conversation_depth/bloc/conversation_depth/bloc_state_conversation_depth.dart';

class AddSettingsScreen extends HookWidget {
  const AddSettingsScreen({super.key,});
 
  @override
  Widget build(BuildContext context) {
    final ctrlAddDepth=useTextEditingController();
    final ctrlLanguageStyle=useTextEditingController();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: const Text("Add Settings"),
        bottom: TabBar(tabs: [
          Tab(text: "Conversation",),
          Tab(text: "Language",),
        ]),
        ),
        body:
        TabBarView(children: [
CustomBlocBuilder<ConversationDepthBloc,ConversationDepthState>(
          isLoading: (state) => state is ConversationDepthLoading,
          isError: (state) => state is ConversationDepthError,
          errorMessage: (state)=> state is ConversationDepthError?state.message:"",
          bloc: getIt<ConversationDepthBloc>(),
          builder: (context, state) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: ctrlAddDepth,
              ),
                      ),
                      gapH12,
                      ElevatedButton(onPressed: (){
                       getIt<ConversationDepthBloc>().add(AddConversationDepth(ctrlAddDepth.text));
                    }, child: Text("Add Conversational depth")),
                    ],),
            ); 
          } ,
        ),
        /// Add Language
        CustomBlocBuilder<LangaugeStyleBloc,LanguageStyleState>(
          isLoading: (state) => state is LanguageStyleLoading,
          isError: (state) => state is LanguageStyleError,
          errorMessage: (state)=> state is LanguageStyleError?state.message:"",
          bloc: getIt<LangaugeStyleBloc>(),
          builder: (context, state) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: TextField(
                controller: ctrlLanguageStyle,
              ),
                      ),
                      gapH12,
                      ElevatedButton(onPressed: (){
                       getIt<LangaugeStyleBloc>().add(AddLanguageStyle(ctrlLanguageStyle.text));
                    }, child: Text("Add Language Style")),
                    ],),
            ); 
          } ,
        )
        ],)
        
         ,
      ),
    );
  }
}