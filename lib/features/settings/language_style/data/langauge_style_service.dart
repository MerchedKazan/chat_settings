import 'dart:convert';

import 'package:chat_settings/helper/api_base_helper.dart';

class LanguageStyleSerivce{
   final _api=ApiBaseHelper();
    getAllLanguageStyle()async{
    var data= await _api.get("https://ai-api.hollo.ai/language_style");
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  }
   addLanguageStyle(String language)async{
    var data= await _api.post("https://ai-api.hollo.ai/language_style",json.encode({
      "name": language,
  "is_active": true
    }));
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  }
}