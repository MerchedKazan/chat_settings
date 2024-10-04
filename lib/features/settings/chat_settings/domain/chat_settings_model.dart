import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_settings_model.freezed.dart';
part 'chat_settings_model.g.dart';

@freezed
class ChatSettingsModel with _$ChatSettingsModel {
  const factory ChatSettingsModel({
    @JsonKey(name:"twin_control_settings") required TwinControlSettingsModel? twinControlSettings,
   @JsonKey(name:"usage_limit_settings") required UsageLimitSettingsModel? usageLimitSettings,
   @JsonKey(name:"language_settings") required LanguageSettingsModel? languageSettings,
  }) = _ChatSettings;

  factory ChatSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$ChatSettingsModelFromJson(json);
}

@freezed
class TwinControlSettingsModel with _$TwinControlSettingsModel {
  const factory TwinControlSettingsModel({
   @JsonKey(name:"stick_to_knowledge_settings") required StickToKnowledgeSettingsModel? stickToKnowledgeSettings,
    @JsonKey(name:"requests_settings") required RequestsSettingsModel? requestsSettings,
    @JsonKey(name:"response_style_settings") required ResponseStyleSettingsModel? responseStyleSettings,
   @JsonKey(name:"conversation_depth_settings") required ConversationDepthSettingsModel? conversationDepthSettings,
  }) = _TwinControlSettings;

  factory TwinControlSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$TwinControlSettingsModelFromJson(json);
}

@freezed
class StickToKnowledgeSettingsModel with _$StickToKnowledgeSettingsModel {
  const factory StickToKnowledgeSettingsModel({
   @JsonKey(name: "stick_to_knowledge_level") required double? stickToKnowledgeLevel,
  }) = _StickToKnowledgeSettings;

  factory StickToKnowledgeSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$StickToKnowledgeSettingsModelFromJson(json);
}

@freezed
class RequestsSettingsModel with _$RequestsSettingsModel {
  const factory RequestsSettingsModel({
   @JsonKey(name: "requests_enabled") required bool? requestsEnabled,
   @JsonKey(name: "request_types") List<String>? requestTypes,
  }) = _RequestsSettings;

  factory RequestsSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$RequestsSettingsModelFromJson(json);
}

@freezed
class ResponseStyleSettingsModel with _$ResponseStyleSettingsModel {
  const factory ResponseStyleSettingsModel({
   @JsonKey(name: "response_style_settings") required String? responseStyle,
  }) = _ResponseStyleSettings;

  factory ResponseStyleSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseStyleSettingsModelFromJson(json);
}

@freezed
class ConversationDepthSettingsModel with _$ConversationDepthSettingsModel {
  const factory ConversationDepthSettingsModel({
   @JsonKey(name: "conversation_depth_id") dynamic conversationDepthId,
  }) = _ConversationDepthSettings;

  factory ConversationDepthSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationDepthSettingsModelFromJson(json);
}

@freezed
class UsageLimitSettingsModel with _$UsageLimitSettingsModel {
  const factory UsageLimitSettingsModel({
   @JsonKey(name:"chat_message_per_month_per_user")   required int? chatMessagePerMonthPerUser,
    @JsonKey(name:"call_minutes_per_month_per_user")  required int? callMinutesPerMonthPerUser,
  }) = _UsageLimitSettings;

  factory UsageLimitSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$UsageLimitSettingsModelFromJson(json);
}

@freezed
class LanguageSettingsModel with _$LanguageSettingsModel {
  const factory LanguageSettingsModel({
   @JsonKey(name:"default_chatbot_language") required String? defaultChatbotLanguage,
   @JsonKey(name:"default_callbot_language") required String? defaultCallbotLanguage,
   @JsonKey(name: "language_style_settings") LanguageStyleSettingsModel? languageStyleSettings,
  }) = _LanguageSettings;

  factory LanguageSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageSettingsModelFromJson(json);
}

@freezed
class LanguageStyleSettingsModel with _$LanguageStyleSettingsModel {
  const factory LanguageStyleSettingsModel({
  @JsonKey(name: "language_style_id")  dynamic languageStyleId,
  }) = _LanguageStyleSettings;

  factory LanguageStyleSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageStyleSettingsModelFromJson(json);
}
