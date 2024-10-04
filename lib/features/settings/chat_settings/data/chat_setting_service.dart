import 'dart:convert';

import 'package:chat_settings/features/settings/chat_settings/domain/chat_settings_model.dart';
import 'package:chat_settings/features/settings/conversation_depth/bloc/selected_id/select_id_conversation_depth_cubit.dart';
import 'package:chat_settings/features/settings/language_style/bloc/selected_id/select_id_language_style_cubit.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/calls_limit_cubit.dart';
import 'package:chat_settings/features/settings/usage_limit/bloc/message_limit_cubit.dart';
import 'package:chat_settings/helper/api_base_helper.dart';
import 'package:chat_settings/main.dart';
import 'package:dio/dio.dart';

class ChatSettingsService{
  final _api=ApiBaseHelper();
   getUserResetSettings()async{
    var data= await _api.get("https://ai-api.hollo.ai/users/custom_settings/defaults");
  // ChatSettingsModel.fromJson(data.data);
  var dataa=await _api.put("https://ai-api.hollo.ai/users/custom_settings",json.encode(data.data
    ));
  // return dataa.data;
  return dataa.data;
  }
   getUserCustomSettings()async{
    var data= await _api.get("https://ai-api.hollo.ai/users/custom_settings");
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  } 

  updateChatSettings()async{
    var dataa=await _api.put("https://ai-api.hollo.ai/users/custom_settings",json.encode(
      {
    "twin_control_settings": {
        "stick_to_knowledge_settings": {
            "stick_to_knowledge_level": 0.5
        },
        "requests_settings": {
            "requests_enabled": true,
            "request_types": []
        },
        "response_style_settings": {
            "response_style": "Neutral"
        },
        "conversation_depth_settings": {
            "conversation_depth_id": getIt<SelectConversationDepthIdCubit>().state.isEmpty?null:getIt<SelectConversationDepthIdCubit>().state
            // "conversation_depth_id": null
        }
    },
    "usage_limit_settings": {
        "chat_message_per_month_per_user": getIt<MessageLimitCubit>().state,
        "call_minutes_per_month_per_user": getIt<CallsLimitCubit>().state
    },
    "language_settings": {
        "default_chatbot_language": "english",
        "default_callbot_language": "english",
        "language_style_settings": {
            "language_style_id": getIt<SelectLanguageStyleCubit>().state.isEmpty?null:getIt<SelectLanguageStyleCubit>().state
            // "language_style_id": null
        }
    }
}
    ));
  return dataa.data;
  }
}