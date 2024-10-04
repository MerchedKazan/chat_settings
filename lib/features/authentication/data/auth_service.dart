import 'dart:convert';

import 'package:chat_settings/helper/api_base_helper.dart';
import 'package:dio/dio.dart';

class AuthService{
   final _api=ApiBaseHelper();
    signIn()async{
    var data= await _api.post("https://api-v2.hollo.ai/user/auth/sign-in/verify/otp-code",json.encode({
  "phoneNumber": "+96176234567",
  "phoneNumberISOCode": "LB",
  "otpNumber": "1234"
    }),options: Options(
      headers: {"auth":false}
    ) );
  // ChatSettingsModel.fromJson(data.data);
  return data.data;
  }
}