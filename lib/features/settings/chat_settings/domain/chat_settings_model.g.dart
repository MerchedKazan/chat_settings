// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSettingsImpl _$$ChatSettingsImplFromJson(Map<String, dynamic> json) =>
    _$ChatSettingsImpl(
      twinControlSettings: json['twin_control_settings'] == null
          ? null
          : TwinControlSettingsModel.fromJson(
              json['twin_control_settings'] as Map<String, dynamic>),
      usageLimitSettings: json['usage_limit_settings'] == null
          ? null
          : UsageLimitSettingsModel.fromJson(
              json['usage_limit_settings'] as Map<String, dynamic>),
      languageSettings: json['language_settings'] == null
          ? null
          : LanguageSettingsModel.fromJson(
              json['language_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatSettingsImplToJson(_$ChatSettingsImpl instance) =>
    <String, dynamic>{
      'twin_control_settings': instance.twinControlSettings,
      'usage_limit_settings': instance.usageLimitSettings,
      'language_settings': instance.languageSettings,
    };

_$TwinControlSettingsImpl _$$TwinControlSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$TwinControlSettingsImpl(
      stickToKnowledgeSettings: json['stick_to_knowledge_settings'] == null
          ? null
          : StickToKnowledgeSettingsModel.fromJson(
              json['stick_to_knowledge_settings'] as Map<String, dynamic>),
      requestsSettings: json['requests_settings'] == null
          ? null
          : RequestsSettingsModel.fromJson(
              json['requests_settings'] as Map<String, dynamic>),
      responseStyleSettings: json['response_style_settings'] == null
          ? null
          : ResponseStyleSettingsModel.fromJson(
              json['response_style_settings'] as Map<String, dynamic>),
      conversationDepthSettings: json['conversation_depth_settings'] == null
          ? null
          : ConversationDepthSettingsModel.fromJson(
              json['conversation_depth_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TwinControlSettingsImplToJson(
        _$TwinControlSettingsImpl instance) =>
    <String, dynamic>{
      'stick_to_knowledge_settings': instance.stickToKnowledgeSettings,
      'requests_settings': instance.requestsSettings,
      'response_style_settings': instance.responseStyleSettings,
      'conversation_depth_settings': instance.conversationDepthSettings,
    };

_$StickToKnowledgeSettingsImpl _$$StickToKnowledgeSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$StickToKnowledgeSettingsImpl(
      stickToKnowledgeLevel:
          (json['stick_to_knowledge_level'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$StickToKnowledgeSettingsImplToJson(
        _$StickToKnowledgeSettingsImpl instance) =>
    <String, dynamic>{
      'stick_to_knowledge_level': instance.stickToKnowledgeLevel,
    };

_$RequestsSettingsImpl _$$RequestsSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestsSettingsImpl(
      requestsEnabled: json['requests_enabled'] as bool?,
      requestTypes: (json['request_types'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$RequestsSettingsImplToJson(
        _$RequestsSettingsImpl instance) =>
    <String, dynamic>{
      'requests_enabled': instance.requestsEnabled,
      'request_types': instance.requestTypes,
    };

_$ResponseStyleSettingsImpl _$$ResponseStyleSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseStyleSettingsImpl(
      responseStyle: json['response_style_settings'] as String?,
    );

Map<String, dynamic> _$$ResponseStyleSettingsImplToJson(
        _$ResponseStyleSettingsImpl instance) =>
    <String, dynamic>{
      'response_style_settings': instance.responseStyle,
    };

_$ConversationDepthSettingsImpl _$$ConversationDepthSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$ConversationDepthSettingsImpl(
      conversationDepthId: json['conversation_depth_id'],
    );

Map<String, dynamic> _$$ConversationDepthSettingsImplToJson(
        _$ConversationDepthSettingsImpl instance) =>
    <String, dynamic>{
      'conversation_depth_id': instance.conversationDepthId,
    };

_$UsageLimitSettingsImpl _$$UsageLimitSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$UsageLimitSettingsImpl(
      chatMessagePerMonthPerUser:
          (json['chat_message_per_month_per_user'] as num?)?.toInt(),
      callMinutesPerMonthPerUser:
          (json['call_minutes_per_month_per_user'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UsageLimitSettingsImplToJson(
        _$UsageLimitSettingsImpl instance) =>
    <String, dynamic>{
      'chat_message_per_month_per_user': instance.chatMessagePerMonthPerUser,
      'call_minutes_per_month_per_user': instance.callMinutesPerMonthPerUser,
    };

_$LanguageSettingsImpl _$$LanguageSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageSettingsImpl(
      defaultChatbotLanguage: json['default_chatbot_language'] as String?,
      defaultCallbotLanguage: json['default_callbot_language'] as String?,
      languageStyleSettings: json['language_style_settings'] == null
          ? null
          : LanguageStyleSettingsModel.fromJson(
              json['language_style_settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LanguageSettingsImplToJson(
        _$LanguageSettingsImpl instance) =>
    <String, dynamic>{
      'default_chatbot_language': instance.defaultChatbotLanguage,
      'default_callbot_language': instance.defaultCallbotLanguage,
      'language_style_settings': instance.languageStyleSettings,
    };

_$LanguageStyleSettingsImpl _$$LanguageStyleSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$LanguageStyleSettingsImpl(
      languageStyleId: json['language_style_id'],
    );

Map<String, dynamic> _$$LanguageStyleSettingsImplToJson(
        _$LanguageStyleSettingsImpl instance) =>
    <String, dynamic>{
      'language_style_id': instance.languageStyleId,
    };
