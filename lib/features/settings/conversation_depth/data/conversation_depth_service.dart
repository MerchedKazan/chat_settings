import 'dart:convert';

import 'package:chat_settings/helper/api_base_helper.dart';

class ConversationDepthSerivce{
   final _api=ApiBaseHelper();
    getAllConversationDepth()async{
    var data= await _api.get("https://ai-api.hollo.ai/conversation_depth");
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  }
    addConversationDepth(String conversationDepth)async{
    var data= await _api.post("https://ai-api.hollo.ai/conversation_depth",json.encode({
      "name": conversationDepth,
  "is_active": true
    }));
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  }
}