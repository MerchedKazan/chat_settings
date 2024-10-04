import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_event_conversation_depth.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/conversation_depth/bloc_state_conversation_depth.dart';
import 'package:chat_settings/features/settings/conversation_depth/data/conversation_depth_service.dart';
import 'package:chat_settings/features/settings/conversation_depth/domain/conversation_depth_model.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_event_language_event.dart';
import 'package:chat_settings/features/settings/language_style/bloc/language_style/bloc_state_language_style.dart';
import 'package:chat_settings/features/settings/language_style/domain/language_style_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../chat_settings/data/chat_setting_service.dart';

class ConversationDepthBloc extends Bloc<ConversationDepthEvent,ConversationDepthState>{
    final ConversationDepthSerivce apiService;
    ConversationDepthBloc(this.apiService):super(ConversationDepthInitial()){
      on<LoadConversationDepth>(_onLoadGetConversationDepth);
      on<AddConversationDepth>(_onAddConversationDepth);
    }

    void _onLoadGetConversationDepth(LoadConversationDepth event,Emitter<ConversationDepthState> emit)async{
      emit(ConversationDepthLoading());
      try{
        var data=await apiService.getAllConversationDepth();
        List<ConversationDepthModel> conversationDepth=List.from(data.map((e)=>ConversationDepthModel.fromJson(e)));
        emit(ConversationDepthLoaded(conversationDepth));
      }catch(e){
        emit(ConversationDepthError(e.toString()));
      }
    }
    void _onAddConversationDepth(AddConversationDepth event,Emitter<ConversationDepthState> emit)async{
      emit(ConversationDepthLoading());
      try{
        var data=await apiService.addConversationDepth(event.conversationDepth);
        ConversationDepthModel conversationDepth=ConversationDepthModel.fromJson(data);
        emit(ConversationDepthLoaded([conversationDepth]));
      }catch(e){
        emit(ConversationDepthError(e.toString()));
      }
    }

}