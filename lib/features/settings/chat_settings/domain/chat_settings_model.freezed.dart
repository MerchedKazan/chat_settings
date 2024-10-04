// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatSettingsModel _$ChatSettingsModelFromJson(Map<String, dynamic> json) {
  return _ChatSettings.fromJson(json);
}

/// @nodoc
mixin _$ChatSettingsModel {
  @JsonKey(name: "twin_control_settings")
  TwinControlSettingsModel? get twinControlSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "usage_limit_settings")
  UsageLimitSettingsModel? get usageLimitSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "language_settings")
  LanguageSettingsModel? get languageSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatSettingsModelCopyWith<ChatSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSettingsModelCopyWith<$Res> {
  factory $ChatSettingsModelCopyWith(
          ChatSettingsModel value, $Res Function(ChatSettingsModel) then) =
      _$ChatSettingsModelCopyWithImpl<$Res, ChatSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "twin_control_settings")
      TwinControlSettingsModel? twinControlSettings,
      @JsonKey(name: "usage_limit_settings")
      UsageLimitSettingsModel? usageLimitSettings,
      @JsonKey(name: "language_settings")
      LanguageSettingsModel? languageSettings});

  $TwinControlSettingsModelCopyWith<$Res>? get twinControlSettings;
  $UsageLimitSettingsModelCopyWith<$Res>? get usageLimitSettings;
  $LanguageSettingsModelCopyWith<$Res>? get languageSettings;
}

/// @nodoc
class _$ChatSettingsModelCopyWithImpl<$Res, $Val extends ChatSettingsModel>
    implements $ChatSettingsModelCopyWith<$Res> {
  _$ChatSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twinControlSettings = freezed,
    Object? usageLimitSettings = freezed,
    Object? languageSettings = freezed,
  }) {
    return _then(_value.copyWith(
      twinControlSettings: freezed == twinControlSettings
          ? _value.twinControlSettings
          : twinControlSettings // ignore: cast_nullable_to_non_nullable
              as TwinControlSettingsModel?,
      usageLimitSettings: freezed == usageLimitSettings
          ? _value.usageLimitSettings
          : usageLimitSettings // ignore: cast_nullable_to_non_nullable
              as UsageLimitSettingsModel?,
      languageSettings: freezed == languageSettings
          ? _value.languageSettings
          : languageSettings // ignore: cast_nullable_to_non_nullable
              as LanguageSettingsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TwinControlSettingsModelCopyWith<$Res>? get twinControlSettings {
    if (_value.twinControlSettings == null) {
      return null;
    }

    return $TwinControlSettingsModelCopyWith<$Res>(_value.twinControlSettings!,
        (value) {
      return _then(_value.copyWith(twinControlSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UsageLimitSettingsModelCopyWith<$Res>? get usageLimitSettings {
    if (_value.usageLimitSettings == null) {
      return null;
    }

    return $UsageLimitSettingsModelCopyWith<$Res>(_value.usageLimitSettings!,
        (value) {
      return _then(_value.copyWith(usageLimitSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageSettingsModelCopyWith<$Res>? get languageSettings {
    if (_value.languageSettings == null) {
      return null;
    }

    return $LanguageSettingsModelCopyWith<$Res>(_value.languageSettings!,
        (value) {
      return _then(_value.copyWith(languageSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatSettingsImplCopyWith<$Res>
    implements $ChatSettingsModelCopyWith<$Res> {
  factory _$$ChatSettingsImplCopyWith(
          _$ChatSettingsImpl value, $Res Function(_$ChatSettingsImpl) then) =
      __$$ChatSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "twin_control_settings")
      TwinControlSettingsModel? twinControlSettings,
      @JsonKey(name: "usage_limit_settings")
      UsageLimitSettingsModel? usageLimitSettings,
      @JsonKey(name: "language_settings")
      LanguageSettingsModel? languageSettings});

  @override
  $TwinControlSettingsModelCopyWith<$Res>? get twinControlSettings;
  @override
  $UsageLimitSettingsModelCopyWith<$Res>? get usageLimitSettings;
  @override
  $LanguageSettingsModelCopyWith<$Res>? get languageSettings;
}

/// @nodoc
class __$$ChatSettingsImplCopyWithImpl<$Res>
    extends _$ChatSettingsModelCopyWithImpl<$Res, _$ChatSettingsImpl>
    implements _$$ChatSettingsImplCopyWith<$Res> {
  __$$ChatSettingsImplCopyWithImpl(
      _$ChatSettingsImpl _value, $Res Function(_$ChatSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? twinControlSettings = freezed,
    Object? usageLimitSettings = freezed,
    Object? languageSettings = freezed,
  }) {
    return _then(_$ChatSettingsImpl(
      twinControlSettings: freezed == twinControlSettings
          ? _value.twinControlSettings
          : twinControlSettings // ignore: cast_nullable_to_non_nullable
              as TwinControlSettingsModel?,
      usageLimitSettings: freezed == usageLimitSettings
          ? _value.usageLimitSettings
          : usageLimitSettings // ignore: cast_nullable_to_non_nullable
              as UsageLimitSettingsModel?,
      languageSettings: freezed == languageSettings
          ? _value.languageSettings
          : languageSettings // ignore: cast_nullable_to_non_nullable
              as LanguageSettingsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSettingsImpl implements _ChatSettings {
  const _$ChatSettingsImpl(
      {@JsonKey(name: "twin_control_settings")
      required this.twinControlSettings,
      @JsonKey(name: "usage_limit_settings") required this.usageLimitSettings,
      @JsonKey(name: "language_settings") required this.languageSettings});

  factory _$ChatSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSettingsImplFromJson(json);

  @override
  @JsonKey(name: "twin_control_settings")
  final TwinControlSettingsModel? twinControlSettings;
  @override
  @JsonKey(name: "usage_limit_settings")
  final UsageLimitSettingsModel? usageLimitSettings;
  @override
  @JsonKey(name: "language_settings")
  final LanguageSettingsModel? languageSettings;

  @override
  String toString() {
    return 'ChatSettingsModel(twinControlSettings: $twinControlSettings, usageLimitSettings: $usageLimitSettings, languageSettings: $languageSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSettingsImpl &&
            (identical(other.twinControlSettings, twinControlSettings) ||
                other.twinControlSettings == twinControlSettings) &&
            (identical(other.usageLimitSettings, usageLimitSettings) ||
                other.usageLimitSettings == usageLimitSettings) &&
            (identical(other.languageSettings, languageSettings) ||
                other.languageSettings == languageSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, twinControlSettings, usageLimitSettings, languageSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSettingsImplCopyWith<_$ChatSettingsImpl> get copyWith =>
      __$$ChatSettingsImplCopyWithImpl<_$ChatSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSettingsImplToJson(
      this,
    );
  }
}

abstract class _ChatSettings implements ChatSettingsModel {
  const factory _ChatSettings(
          {@JsonKey(name: "twin_control_settings")
          required final TwinControlSettingsModel? twinControlSettings,
          @JsonKey(name: "usage_limit_settings")
          required final UsageLimitSettingsModel? usageLimitSettings,
          @JsonKey(name: "language_settings")
          required final LanguageSettingsModel? languageSettings}) =
      _$ChatSettingsImpl;

  factory _ChatSettings.fromJson(Map<String, dynamic> json) =
      _$ChatSettingsImpl.fromJson;

  @override
  @JsonKey(name: "twin_control_settings")
  TwinControlSettingsModel? get twinControlSettings;
  @override
  @JsonKey(name: "usage_limit_settings")
  UsageLimitSettingsModel? get usageLimitSettings;
  @override
  @JsonKey(name: "language_settings")
  LanguageSettingsModel? get languageSettings;
  @override
  @JsonKey(ignore: true)
  _$$ChatSettingsImplCopyWith<_$ChatSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TwinControlSettingsModel _$TwinControlSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _TwinControlSettings.fromJson(json);
}

/// @nodoc
mixin _$TwinControlSettingsModel {
  @JsonKey(name: "stick_to_knowledge_settings")
  StickToKnowledgeSettingsModel? get stickToKnowledgeSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "requests_settings")
  RequestsSettingsModel? get requestsSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "response_style_settings")
  ResponseStyleSettingsModel? get responseStyleSettings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "conversation_depth_settings")
  ConversationDepthSettingsModel? get conversationDepthSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TwinControlSettingsModelCopyWith<TwinControlSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwinControlSettingsModelCopyWith<$Res> {
  factory $TwinControlSettingsModelCopyWith(TwinControlSettingsModel value,
          $Res Function(TwinControlSettingsModel) then) =
      _$TwinControlSettingsModelCopyWithImpl<$Res, TwinControlSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "stick_to_knowledge_settings")
      StickToKnowledgeSettingsModel? stickToKnowledgeSettings,
      @JsonKey(name: "requests_settings")
      RequestsSettingsModel? requestsSettings,
      @JsonKey(name: "response_style_settings")
      ResponseStyleSettingsModel? responseStyleSettings,
      @JsonKey(name: "conversation_depth_settings")
      ConversationDepthSettingsModel? conversationDepthSettings});

  $StickToKnowledgeSettingsModelCopyWith<$Res>? get stickToKnowledgeSettings;
  $RequestsSettingsModelCopyWith<$Res>? get requestsSettings;
  $ResponseStyleSettingsModelCopyWith<$Res>? get responseStyleSettings;
  $ConversationDepthSettingsModelCopyWith<$Res>? get conversationDepthSettings;
}

/// @nodoc
class _$TwinControlSettingsModelCopyWithImpl<$Res,
        $Val extends TwinControlSettingsModel>
    implements $TwinControlSettingsModelCopyWith<$Res> {
  _$TwinControlSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickToKnowledgeSettings = freezed,
    Object? requestsSettings = freezed,
    Object? responseStyleSettings = freezed,
    Object? conversationDepthSettings = freezed,
  }) {
    return _then(_value.copyWith(
      stickToKnowledgeSettings: freezed == stickToKnowledgeSettings
          ? _value.stickToKnowledgeSettings
          : stickToKnowledgeSettings // ignore: cast_nullable_to_non_nullable
              as StickToKnowledgeSettingsModel?,
      requestsSettings: freezed == requestsSettings
          ? _value.requestsSettings
          : requestsSettings // ignore: cast_nullable_to_non_nullable
              as RequestsSettingsModel?,
      responseStyleSettings: freezed == responseStyleSettings
          ? _value.responseStyleSettings
          : responseStyleSettings // ignore: cast_nullable_to_non_nullable
              as ResponseStyleSettingsModel?,
      conversationDepthSettings: freezed == conversationDepthSettings
          ? _value.conversationDepthSettings
          : conversationDepthSettings // ignore: cast_nullable_to_non_nullable
              as ConversationDepthSettingsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StickToKnowledgeSettingsModelCopyWith<$Res>? get stickToKnowledgeSettings {
    if (_value.stickToKnowledgeSettings == null) {
      return null;
    }

    return $StickToKnowledgeSettingsModelCopyWith<$Res>(
        _value.stickToKnowledgeSettings!, (value) {
      return _then(_value.copyWith(stickToKnowledgeSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestsSettingsModelCopyWith<$Res>? get requestsSettings {
    if (_value.requestsSettings == null) {
      return null;
    }

    return $RequestsSettingsModelCopyWith<$Res>(_value.requestsSettings!,
        (value) {
      return _then(_value.copyWith(requestsSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseStyleSettingsModelCopyWith<$Res>? get responseStyleSettings {
    if (_value.responseStyleSettings == null) {
      return null;
    }

    return $ResponseStyleSettingsModelCopyWith<$Res>(
        _value.responseStyleSettings!, (value) {
      return _then(_value.copyWith(responseStyleSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ConversationDepthSettingsModelCopyWith<$Res>? get conversationDepthSettings {
    if (_value.conversationDepthSettings == null) {
      return null;
    }

    return $ConversationDepthSettingsModelCopyWith<$Res>(
        _value.conversationDepthSettings!, (value) {
      return _then(_value.copyWith(conversationDepthSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TwinControlSettingsImplCopyWith<$Res>
    implements $TwinControlSettingsModelCopyWith<$Res> {
  factory _$$TwinControlSettingsImplCopyWith(_$TwinControlSettingsImpl value,
          $Res Function(_$TwinControlSettingsImpl) then) =
      __$$TwinControlSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stick_to_knowledge_settings")
      StickToKnowledgeSettingsModel? stickToKnowledgeSettings,
      @JsonKey(name: "requests_settings")
      RequestsSettingsModel? requestsSettings,
      @JsonKey(name: "response_style_settings")
      ResponseStyleSettingsModel? responseStyleSettings,
      @JsonKey(name: "conversation_depth_settings")
      ConversationDepthSettingsModel? conversationDepthSettings});

  @override
  $StickToKnowledgeSettingsModelCopyWith<$Res>? get stickToKnowledgeSettings;
  @override
  $RequestsSettingsModelCopyWith<$Res>? get requestsSettings;
  @override
  $ResponseStyleSettingsModelCopyWith<$Res>? get responseStyleSettings;
  @override
  $ConversationDepthSettingsModelCopyWith<$Res>? get conversationDepthSettings;
}

/// @nodoc
class __$$TwinControlSettingsImplCopyWithImpl<$Res>
    extends _$TwinControlSettingsModelCopyWithImpl<$Res,
        _$TwinControlSettingsImpl>
    implements _$$TwinControlSettingsImplCopyWith<$Res> {
  __$$TwinControlSettingsImplCopyWithImpl(_$TwinControlSettingsImpl _value,
      $Res Function(_$TwinControlSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickToKnowledgeSettings = freezed,
    Object? requestsSettings = freezed,
    Object? responseStyleSettings = freezed,
    Object? conversationDepthSettings = freezed,
  }) {
    return _then(_$TwinControlSettingsImpl(
      stickToKnowledgeSettings: freezed == stickToKnowledgeSettings
          ? _value.stickToKnowledgeSettings
          : stickToKnowledgeSettings // ignore: cast_nullable_to_non_nullable
              as StickToKnowledgeSettingsModel?,
      requestsSettings: freezed == requestsSettings
          ? _value.requestsSettings
          : requestsSettings // ignore: cast_nullable_to_non_nullable
              as RequestsSettingsModel?,
      responseStyleSettings: freezed == responseStyleSettings
          ? _value.responseStyleSettings
          : responseStyleSettings // ignore: cast_nullable_to_non_nullable
              as ResponseStyleSettingsModel?,
      conversationDepthSettings: freezed == conversationDepthSettings
          ? _value.conversationDepthSettings
          : conversationDepthSettings // ignore: cast_nullable_to_non_nullable
              as ConversationDepthSettingsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TwinControlSettingsImpl implements _TwinControlSettings {
  const _$TwinControlSettingsImpl(
      {@JsonKey(name: "stick_to_knowledge_settings")
      required this.stickToKnowledgeSettings,
      @JsonKey(name: "requests_settings") required this.requestsSettings,
      @JsonKey(name: "response_style_settings")
      required this.responseStyleSettings,
      @JsonKey(name: "conversation_depth_settings")
      required this.conversationDepthSettings});

  factory _$TwinControlSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TwinControlSettingsImplFromJson(json);

  @override
  @JsonKey(name: "stick_to_knowledge_settings")
  final StickToKnowledgeSettingsModel? stickToKnowledgeSettings;
  @override
  @JsonKey(name: "requests_settings")
  final RequestsSettingsModel? requestsSettings;
  @override
  @JsonKey(name: "response_style_settings")
  final ResponseStyleSettingsModel? responseStyleSettings;
  @override
  @JsonKey(name: "conversation_depth_settings")
  final ConversationDepthSettingsModel? conversationDepthSettings;

  @override
  String toString() {
    return 'TwinControlSettingsModel(stickToKnowledgeSettings: $stickToKnowledgeSettings, requestsSettings: $requestsSettings, responseStyleSettings: $responseStyleSettings, conversationDepthSettings: $conversationDepthSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TwinControlSettingsImpl &&
            (identical(
                    other.stickToKnowledgeSettings, stickToKnowledgeSettings) ||
                other.stickToKnowledgeSettings == stickToKnowledgeSettings) &&
            (identical(other.requestsSettings, requestsSettings) ||
                other.requestsSettings == requestsSettings) &&
            (identical(other.responseStyleSettings, responseStyleSettings) ||
                other.responseStyleSettings == responseStyleSettings) &&
            (identical(other.conversationDepthSettings,
                    conversationDepthSettings) ||
                other.conversationDepthSettings == conversationDepthSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stickToKnowledgeSettings,
      requestsSettings, responseStyleSettings, conversationDepthSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TwinControlSettingsImplCopyWith<_$TwinControlSettingsImpl> get copyWith =>
      __$$TwinControlSettingsImplCopyWithImpl<_$TwinControlSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TwinControlSettingsImplToJson(
      this,
    );
  }
}

abstract class _TwinControlSettings implements TwinControlSettingsModel {
  const factory _TwinControlSettings(
      {@JsonKey(name: "stick_to_knowledge_settings")
      required final StickToKnowledgeSettingsModel? stickToKnowledgeSettings,
      @JsonKey(name: "requests_settings")
      required final RequestsSettingsModel? requestsSettings,
      @JsonKey(name: "response_style_settings")
      required final ResponseStyleSettingsModel? responseStyleSettings,
      @JsonKey(name: "conversation_depth_settings")
      required final ConversationDepthSettingsModel?
          conversationDepthSettings}) = _$TwinControlSettingsImpl;

  factory _TwinControlSettings.fromJson(Map<String, dynamic> json) =
      _$TwinControlSettingsImpl.fromJson;

  @override
  @JsonKey(name: "stick_to_knowledge_settings")
  StickToKnowledgeSettingsModel? get stickToKnowledgeSettings;
  @override
  @JsonKey(name: "requests_settings")
  RequestsSettingsModel? get requestsSettings;
  @override
  @JsonKey(name: "response_style_settings")
  ResponseStyleSettingsModel? get responseStyleSettings;
  @override
  @JsonKey(name: "conversation_depth_settings")
  ConversationDepthSettingsModel? get conversationDepthSettings;
  @override
  @JsonKey(ignore: true)
  _$$TwinControlSettingsImplCopyWith<_$TwinControlSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StickToKnowledgeSettingsModel _$StickToKnowledgeSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _StickToKnowledgeSettings.fromJson(json);
}

/// @nodoc
mixin _$StickToKnowledgeSettingsModel {
  @JsonKey(name: "stick_to_knowledge_level")
  double? get stickToKnowledgeLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StickToKnowledgeSettingsModelCopyWith<StickToKnowledgeSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StickToKnowledgeSettingsModelCopyWith<$Res> {
  factory $StickToKnowledgeSettingsModelCopyWith(
          StickToKnowledgeSettingsModel value,
          $Res Function(StickToKnowledgeSettingsModel) then) =
      _$StickToKnowledgeSettingsModelCopyWithImpl<$Res,
          StickToKnowledgeSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "stick_to_knowledge_level")
      double? stickToKnowledgeLevel});
}

/// @nodoc
class _$StickToKnowledgeSettingsModelCopyWithImpl<$Res,
        $Val extends StickToKnowledgeSettingsModel>
    implements $StickToKnowledgeSettingsModelCopyWith<$Res> {
  _$StickToKnowledgeSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickToKnowledgeLevel = freezed,
  }) {
    return _then(_value.copyWith(
      stickToKnowledgeLevel: freezed == stickToKnowledgeLevel
          ? _value.stickToKnowledgeLevel
          : stickToKnowledgeLevel // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StickToKnowledgeSettingsImplCopyWith<$Res>
    implements $StickToKnowledgeSettingsModelCopyWith<$Res> {
  factory _$$StickToKnowledgeSettingsImplCopyWith(
          _$StickToKnowledgeSettingsImpl value,
          $Res Function(_$StickToKnowledgeSettingsImpl) then) =
      __$$StickToKnowledgeSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "stick_to_knowledge_level")
      double? stickToKnowledgeLevel});
}

/// @nodoc
class __$$StickToKnowledgeSettingsImplCopyWithImpl<$Res>
    extends _$StickToKnowledgeSettingsModelCopyWithImpl<$Res,
        _$StickToKnowledgeSettingsImpl>
    implements _$$StickToKnowledgeSettingsImplCopyWith<$Res> {
  __$$StickToKnowledgeSettingsImplCopyWithImpl(
      _$StickToKnowledgeSettingsImpl _value,
      $Res Function(_$StickToKnowledgeSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stickToKnowledgeLevel = freezed,
  }) {
    return _then(_$StickToKnowledgeSettingsImpl(
      stickToKnowledgeLevel: freezed == stickToKnowledgeLevel
          ? _value.stickToKnowledgeLevel
          : stickToKnowledgeLevel // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StickToKnowledgeSettingsImpl implements _StickToKnowledgeSettings {
  const _$StickToKnowledgeSettingsImpl(
      {@JsonKey(name: "stick_to_knowledge_level")
      required this.stickToKnowledgeLevel});

  factory _$StickToKnowledgeSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StickToKnowledgeSettingsImplFromJson(json);

  @override
  @JsonKey(name: "stick_to_knowledge_level")
  final double? stickToKnowledgeLevel;

  @override
  String toString() {
    return 'StickToKnowledgeSettingsModel(stickToKnowledgeLevel: $stickToKnowledgeLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StickToKnowledgeSettingsImpl &&
            (identical(other.stickToKnowledgeLevel, stickToKnowledgeLevel) ||
                other.stickToKnowledgeLevel == stickToKnowledgeLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stickToKnowledgeLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StickToKnowledgeSettingsImplCopyWith<_$StickToKnowledgeSettingsImpl>
      get copyWith => __$$StickToKnowledgeSettingsImplCopyWithImpl<
          _$StickToKnowledgeSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StickToKnowledgeSettingsImplToJson(
      this,
    );
  }
}

abstract class _StickToKnowledgeSettings
    implements StickToKnowledgeSettingsModel {
  const factory _StickToKnowledgeSettings(
          {@JsonKey(name: "stick_to_knowledge_level")
          required final double? stickToKnowledgeLevel}) =
      _$StickToKnowledgeSettingsImpl;

  factory _StickToKnowledgeSettings.fromJson(Map<String, dynamic> json) =
      _$StickToKnowledgeSettingsImpl.fromJson;

  @override
  @JsonKey(name: "stick_to_knowledge_level")
  double? get stickToKnowledgeLevel;
  @override
  @JsonKey(ignore: true)
  _$$StickToKnowledgeSettingsImplCopyWith<_$StickToKnowledgeSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RequestsSettingsModel _$RequestsSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _RequestsSettings.fromJson(json);
}

/// @nodoc
mixin _$RequestsSettingsModel {
  @JsonKey(name: "requests_enabled")
  bool? get requestsEnabled => throw _privateConstructorUsedError;
  @JsonKey(name: "request_types")
  List<String>? get requestTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestsSettingsModelCopyWith<RequestsSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsSettingsModelCopyWith<$Res> {
  factory $RequestsSettingsModelCopyWith(RequestsSettingsModel value,
          $Res Function(RequestsSettingsModel) then) =
      _$RequestsSettingsModelCopyWithImpl<$Res, RequestsSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "requests_enabled") bool? requestsEnabled,
      @JsonKey(name: "request_types") List<String>? requestTypes});
}

/// @nodoc
class _$RequestsSettingsModelCopyWithImpl<$Res,
        $Val extends RequestsSettingsModel>
    implements $RequestsSettingsModelCopyWith<$Res> {
  _$RequestsSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestsEnabled = freezed,
    Object? requestTypes = freezed,
  }) {
    return _then(_value.copyWith(
      requestsEnabled: freezed == requestsEnabled
          ? _value.requestsEnabled
          : requestsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTypes: freezed == requestTypes
          ? _value.requestTypes
          : requestTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestsSettingsImplCopyWith<$Res>
    implements $RequestsSettingsModelCopyWith<$Res> {
  factory _$$RequestsSettingsImplCopyWith(_$RequestsSettingsImpl value,
          $Res Function(_$RequestsSettingsImpl) then) =
      __$$RequestsSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "requests_enabled") bool? requestsEnabled,
      @JsonKey(name: "request_types") List<String>? requestTypes});
}

/// @nodoc
class __$$RequestsSettingsImplCopyWithImpl<$Res>
    extends _$RequestsSettingsModelCopyWithImpl<$Res, _$RequestsSettingsImpl>
    implements _$$RequestsSettingsImplCopyWith<$Res> {
  __$$RequestsSettingsImplCopyWithImpl(_$RequestsSettingsImpl _value,
      $Res Function(_$RequestsSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestsEnabled = freezed,
    Object? requestTypes = freezed,
  }) {
    return _then(_$RequestsSettingsImpl(
      requestsEnabled: freezed == requestsEnabled
          ? _value.requestsEnabled
          : requestsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestTypes: freezed == requestTypes
          ? _value._requestTypes
          : requestTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestsSettingsImpl implements _RequestsSettings {
  const _$RequestsSettingsImpl(
      {@JsonKey(name: "requests_enabled") required this.requestsEnabled,
      @JsonKey(name: "request_types") final List<String>? requestTypes})
      : _requestTypes = requestTypes;

  factory _$RequestsSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestsSettingsImplFromJson(json);

  @override
  @JsonKey(name: "requests_enabled")
  final bool? requestsEnabled;
  final List<String>? _requestTypes;
  @override
  @JsonKey(name: "request_types")
  List<String>? get requestTypes {
    final value = _requestTypes;
    if (value == null) return null;
    if (_requestTypes is EqualUnmodifiableListView) return _requestTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestsSettingsModel(requestsEnabled: $requestsEnabled, requestTypes: $requestTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsSettingsImpl &&
            (identical(other.requestsEnabled, requestsEnabled) ||
                other.requestsEnabled == requestsEnabled) &&
            const DeepCollectionEquality()
                .equals(other._requestTypes, _requestTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestsEnabled,
      const DeepCollectionEquality().hash(_requestTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsSettingsImplCopyWith<_$RequestsSettingsImpl> get copyWith =>
      __$$RequestsSettingsImplCopyWithImpl<_$RequestsSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestsSettingsImplToJson(
      this,
    );
  }
}

abstract class _RequestsSettings implements RequestsSettingsModel {
  const factory _RequestsSettings(
      {@JsonKey(name: "requests_enabled") required final bool? requestsEnabled,
      @JsonKey(name: "request_types")
      final List<String>? requestTypes}) = _$RequestsSettingsImpl;

  factory _RequestsSettings.fromJson(Map<String, dynamic> json) =
      _$RequestsSettingsImpl.fromJson;

  @override
  @JsonKey(name: "requests_enabled")
  bool? get requestsEnabled;
  @override
  @JsonKey(name: "request_types")
  List<String>? get requestTypes;
  @override
  @JsonKey(ignore: true)
  _$$RequestsSettingsImplCopyWith<_$RequestsSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseStyleSettingsModel _$ResponseStyleSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseStyleSettings.fromJson(json);
}

/// @nodoc
mixin _$ResponseStyleSettingsModel {
  @JsonKey(name: "response_style_settings")
  String? get responseStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseStyleSettingsModelCopyWith<ResponseStyleSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseStyleSettingsModelCopyWith<$Res> {
  factory $ResponseStyleSettingsModelCopyWith(ResponseStyleSettingsModel value,
          $Res Function(ResponseStyleSettingsModel) then) =
      _$ResponseStyleSettingsModelCopyWithImpl<$Res,
          ResponseStyleSettingsModel>;
  @useResult
  $Res call({@JsonKey(name: "response_style_settings") String? responseStyle});
}

/// @nodoc
class _$ResponseStyleSettingsModelCopyWithImpl<$Res,
        $Val extends ResponseStyleSettingsModel>
    implements $ResponseStyleSettingsModelCopyWith<$Res> {
  _$ResponseStyleSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStyle = freezed,
  }) {
    return _then(_value.copyWith(
      responseStyle: freezed == responseStyle
          ? _value.responseStyle
          : responseStyle // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseStyleSettingsImplCopyWith<$Res>
    implements $ResponseStyleSettingsModelCopyWith<$Res> {
  factory _$$ResponseStyleSettingsImplCopyWith(
          _$ResponseStyleSettingsImpl value,
          $Res Function(_$ResponseStyleSettingsImpl) then) =
      __$$ResponseStyleSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "response_style_settings") String? responseStyle});
}

/// @nodoc
class __$$ResponseStyleSettingsImplCopyWithImpl<$Res>
    extends _$ResponseStyleSettingsModelCopyWithImpl<$Res,
        _$ResponseStyleSettingsImpl>
    implements _$$ResponseStyleSettingsImplCopyWith<$Res> {
  __$$ResponseStyleSettingsImplCopyWithImpl(_$ResponseStyleSettingsImpl _value,
      $Res Function(_$ResponseStyleSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseStyle = freezed,
  }) {
    return _then(_$ResponseStyleSettingsImpl(
      responseStyle: freezed == responseStyle
          ? _value.responseStyle
          : responseStyle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseStyleSettingsImpl implements _ResponseStyleSettings {
  const _$ResponseStyleSettingsImpl(
      {@JsonKey(name: "response_style_settings") required this.responseStyle});

  factory _$ResponseStyleSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseStyleSettingsImplFromJson(json);

  @override
  @JsonKey(name: "response_style_settings")
  final String? responseStyle;

  @override
  String toString() {
    return 'ResponseStyleSettingsModel(responseStyle: $responseStyle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseStyleSettingsImpl &&
            (identical(other.responseStyle, responseStyle) ||
                other.responseStyle == responseStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responseStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseStyleSettingsImplCopyWith<_$ResponseStyleSettingsImpl>
      get copyWith => __$$ResponseStyleSettingsImplCopyWithImpl<
          _$ResponseStyleSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseStyleSettingsImplToJson(
      this,
    );
  }
}

abstract class _ResponseStyleSettings implements ResponseStyleSettingsModel {
  const factory _ResponseStyleSettings(
      {@JsonKey(name: "response_style_settings")
      required final String? responseStyle}) = _$ResponseStyleSettingsImpl;

  factory _ResponseStyleSettings.fromJson(Map<String, dynamic> json) =
      _$ResponseStyleSettingsImpl.fromJson;

  @override
  @JsonKey(name: "response_style_settings")
  String? get responseStyle;
  @override
  @JsonKey(ignore: true)
  _$$ResponseStyleSettingsImplCopyWith<_$ResponseStyleSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConversationDepthSettingsModel _$ConversationDepthSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationDepthSettings.fromJson(json);
}

/// @nodoc
mixin _$ConversationDepthSettingsModel {
  @JsonKey(name: "conversation_depth_id")
  dynamic get conversationDepthId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationDepthSettingsModelCopyWith<ConversationDepthSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDepthSettingsModelCopyWith<$Res> {
  factory $ConversationDepthSettingsModelCopyWith(
          ConversationDepthSettingsModel value,
          $Res Function(ConversationDepthSettingsModel) then) =
      _$ConversationDepthSettingsModelCopyWithImpl<$Res,
          ConversationDepthSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "conversation_depth_id") dynamic conversationDepthId});
}

/// @nodoc
class _$ConversationDepthSettingsModelCopyWithImpl<$Res,
        $Val extends ConversationDepthSettingsModel>
    implements $ConversationDepthSettingsModelCopyWith<$Res> {
  _$ConversationDepthSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationDepthId = freezed,
  }) {
    return _then(_value.copyWith(
      conversationDepthId: freezed == conversationDepthId
          ? _value.conversationDepthId
          : conversationDepthId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationDepthSettingsImplCopyWith<$Res>
    implements $ConversationDepthSettingsModelCopyWith<$Res> {
  factory _$$ConversationDepthSettingsImplCopyWith(
          _$ConversationDepthSettingsImpl value,
          $Res Function(_$ConversationDepthSettingsImpl) then) =
      __$$ConversationDepthSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "conversation_depth_id") dynamic conversationDepthId});
}

/// @nodoc
class __$$ConversationDepthSettingsImplCopyWithImpl<$Res>
    extends _$ConversationDepthSettingsModelCopyWithImpl<$Res,
        _$ConversationDepthSettingsImpl>
    implements _$$ConversationDepthSettingsImplCopyWith<$Res> {
  __$$ConversationDepthSettingsImplCopyWithImpl(
      _$ConversationDepthSettingsImpl _value,
      $Res Function(_$ConversationDepthSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationDepthId = freezed,
  }) {
    return _then(_$ConversationDepthSettingsImpl(
      conversationDepthId: freezed == conversationDepthId
          ? _value.conversationDepthId
          : conversationDepthId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConversationDepthSettingsImpl implements _ConversationDepthSettings {
  const _$ConversationDepthSettingsImpl(
      {@JsonKey(name: "conversation_depth_id") this.conversationDepthId});

  factory _$ConversationDepthSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDepthSettingsImplFromJson(json);

  @override
  @JsonKey(name: "conversation_depth_id")
  final dynamic conversationDepthId;

  @override
  String toString() {
    return 'ConversationDepthSettingsModel(conversationDepthId: $conversationDepthId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDepthSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other.conversationDepthId, conversationDepthId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(conversationDepthId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDepthSettingsImplCopyWith<_$ConversationDepthSettingsImpl>
      get copyWith => __$$ConversationDepthSettingsImplCopyWithImpl<
          _$ConversationDepthSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDepthSettingsImplToJson(
      this,
    );
  }
}

abstract class _ConversationDepthSettings
    implements ConversationDepthSettingsModel {
  const factory _ConversationDepthSettings(
      {@JsonKey(name: "conversation_depth_id")
      final dynamic conversationDepthId}) = _$ConversationDepthSettingsImpl;

  factory _ConversationDepthSettings.fromJson(Map<String, dynamic> json) =
      _$ConversationDepthSettingsImpl.fromJson;

  @override
  @JsonKey(name: "conversation_depth_id")
  dynamic get conversationDepthId;
  @override
  @JsonKey(ignore: true)
  _$$ConversationDepthSettingsImplCopyWith<_$ConversationDepthSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UsageLimitSettingsModel _$UsageLimitSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _UsageLimitSettings.fromJson(json);
}

/// @nodoc
mixin _$UsageLimitSettingsModel {
  @JsonKey(name: "chat_message_per_month_per_user")
  int? get chatMessagePerMonthPerUser => throw _privateConstructorUsedError;
  @JsonKey(name: "call_minutes_per_month_per_user")
  int? get callMinutesPerMonthPerUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsageLimitSettingsModelCopyWith<UsageLimitSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsageLimitSettingsModelCopyWith<$Res> {
  factory $UsageLimitSettingsModelCopyWith(UsageLimitSettingsModel value,
          $Res Function(UsageLimitSettingsModel) then) =
      _$UsageLimitSettingsModelCopyWithImpl<$Res, UsageLimitSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "chat_message_per_month_per_user")
      int? chatMessagePerMonthPerUser,
      @JsonKey(name: "call_minutes_per_month_per_user")
      int? callMinutesPerMonthPerUser});
}

/// @nodoc
class _$UsageLimitSettingsModelCopyWithImpl<$Res,
        $Val extends UsageLimitSettingsModel>
    implements $UsageLimitSettingsModelCopyWith<$Res> {
  _$UsageLimitSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessagePerMonthPerUser = freezed,
    Object? callMinutesPerMonthPerUser = freezed,
  }) {
    return _then(_value.copyWith(
      chatMessagePerMonthPerUser: freezed == chatMessagePerMonthPerUser
          ? _value.chatMessagePerMonthPerUser
          : chatMessagePerMonthPerUser // ignore: cast_nullable_to_non_nullable
              as int?,
      callMinutesPerMonthPerUser: freezed == callMinutesPerMonthPerUser
          ? _value.callMinutesPerMonthPerUser
          : callMinutesPerMonthPerUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsageLimitSettingsImplCopyWith<$Res>
    implements $UsageLimitSettingsModelCopyWith<$Res> {
  factory _$$UsageLimitSettingsImplCopyWith(_$UsageLimitSettingsImpl value,
          $Res Function(_$UsageLimitSettingsImpl) then) =
      __$$UsageLimitSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "chat_message_per_month_per_user")
      int? chatMessagePerMonthPerUser,
      @JsonKey(name: "call_minutes_per_month_per_user")
      int? callMinutesPerMonthPerUser});
}

/// @nodoc
class __$$UsageLimitSettingsImplCopyWithImpl<$Res>
    extends _$UsageLimitSettingsModelCopyWithImpl<$Res,
        _$UsageLimitSettingsImpl>
    implements _$$UsageLimitSettingsImplCopyWith<$Res> {
  __$$UsageLimitSettingsImplCopyWithImpl(_$UsageLimitSettingsImpl _value,
      $Res Function(_$UsageLimitSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatMessagePerMonthPerUser = freezed,
    Object? callMinutesPerMonthPerUser = freezed,
  }) {
    return _then(_$UsageLimitSettingsImpl(
      chatMessagePerMonthPerUser: freezed == chatMessagePerMonthPerUser
          ? _value.chatMessagePerMonthPerUser
          : chatMessagePerMonthPerUser // ignore: cast_nullable_to_non_nullable
              as int?,
      callMinutesPerMonthPerUser: freezed == callMinutesPerMonthPerUser
          ? _value.callMinutesPerMonthPerUser
          : callMinutesPerMonthPerUser // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsageLimitSettingsImpl implements _UsageLimitSettings {
  const _$UsageLimitSettingsImpl(
      {@JsonKey(name: "chat_message_per_month_per_user")
      required this.chatMessagePerMonthPerUser,
      @JsonKey(name: "call_minutes_per_month_per_user")
      required this.callMinutesPerMonthPerUser});

  factory _$UsageLimitSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsageLimitSettingsImplFromJson(json);

  @override
  @JsonKey(name: "chat_message_per_month_per_user")
  final int? chatMessagePerMonthPerUser;
  @override
  @JsonKey(name: "call_minutes_per_month_per_user")
  final int? callMinutesPerMonthPerUser;

  @override
  String toString() {
    return 'UsageLimitSettingsModel(chatMessagePerMonthPerUser: $chatMessagePerMonthPerUser, callMinutesPerMonthPerUser: $callMinutesPerMonthPerUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsageLimitSettingsImpl &&
            (identical(other.chatMessagePerMonthPerUser,
                    chatMessagePerMonthPerUser) ||
                other.chatMessagePerMonthPerUser ==
                    chatMessagePerMonthPerUser) &&
            (identical(other.callMinutesPerMonthPerUser,
                    callMinutesPerMonthPerUser) ||
                other.callMinutesPerMonthPerUser ==
                    callMinutesPerMonthPerUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, chatMessagePerMonthPerUser, callMinutesPerMonthPerUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsageLimitSettingsImplCopyWith<_$UsageLimitSettingsImpl> get copyWith =>
      __$$UsageLimitSettingsImplCopyWithImpl<_$UsageLimitSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsageLimitSettingsImplToJson(
      this,
    );
  }
}

abstract class _UsageLimitSettings implements UsageLimitSettingsModel {
  const factory _UsageLimitSettings(
          {@JsonKey(name: "chat_message_per_month_per_user")
          required final int? chatMessagePerMonthPerUser,
          @JsonKey(name: "call_minutes_per_month_per_user")
          required final int? callMinutesPerMonthPerUser}) =
      _$UsageLimitSettingsImpl;

  factory _UsageLimitSettings.fromJson(Map<String, dynamic> json) =
      _$UsageLimitSettingsImpl.fromJson;

  @override
  @JsonKey(name: "chat_message_per_month_per_user")
  int? get chatMessagePerMonthPerUser;
  @override
  @JsonKey(name: "call_minutes_per_month_per_user")
  int? get callMinutesPerMonthPerUser;
  @override
  @JsonKey(ignore: true)
  _$$UsageLimitSettingsImplCopyWith<_$UsageLimitSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageSettingsModel _$LanguageSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageSettings.fromJson(json);
}

/// @nodoc
mixin _$LanguageSettingsModel {
  @JsonKey(name: "default_chatbot_language")
  String? get defaultChatbotLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "default_callbot_language")
  String? get defaultCallbotLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "language_style_settings")
  LanguageStyleSettingsModel? get languageStyleSettings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageSettingsModelCopyWith<LanguageSettingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSettingsModelCopyWith<$Res> {
  factory $LanguageSettingsModelCopyWith(LanguageSettingsModel value,
          $Res Function(LanguageSettingsModel) then) =
      _$LanguageSettingsModelCopyWithImpl<$Res, LanguageSettingsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "default_chatbot_language")
      String? defaultChatbotLanguage,
      @JsonKey(name: "default_callbot_language") String? defaultCallbotLanguage,
      @JsonKey(name: "language_style_settings")
      LanguageStyleSettingsModel? languageStyleSettings});

  $LanguageStyleSettingsModelCopyWith<$Res>? get languageStyleSettings;
}

/// @nodoc
class _$LanguageSettingsModelCopyWithImpl<$Res,
        $Val extends LanguageSettingsModel>
    implements $LanguageSettingsModelCopyWith<$Res> {
  _$LanguageSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultChatbotLanguage = freezed,
    Object? defaultCallbotLanguage = freezed,
    Object? languageStyleSettings = freezed,
  }) {
    return _then(_value.copyWith(
      defaultChatbotLanguage: freezed == defaultChatbotLanguage
          ? _value.defaultChatbotLanguage
          : defaultChatbotLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultCallbotLanguage: freezed == defaultCallbotLanguage
          ? _value.defaultCallbotLanguage
          : defaultCallbotLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      languageStyleSettings: freezed == languageStyleSettings
          ? _value.languageStyleSettings
          : languageStyleSettings // ignore: cast_nullable_to_non_nullable
              as LanguageStyleSettingsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageStyleSettingsModelCopyWith<$Res>? get languageStyleSettings {
    if (_value.languageStyleSettings == null) {
      return null;
    }

    return $LanguageStyleSettingsModelCopyWith<$Res>(
        _value.languageStyleSettings!, (value) {
      return _then(_value.copyWith(languageStyleSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LanguageSettingsImplCopyWith<$Res>
    implements $LanguageSettingsModelCopyWith<$Res> {
  factory _$$LanguageSettingsImplCopyWith(_$LanguageSettingsImpl value,
          $Res Function(_$LanguageSettingsImpl) then) =
      __$$LanguageSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "default_chatbot_language")
      String? defaultChatbotLanguage,
      @JsonKey(name: "default_callbot_language") String? defaultCallbotLanguage,
      @JsonKey(name: "language_style_settings")
      LanguageStyleSettingsModel? languageStyleSettings});

  @override
  $LanguageStyleSettingsModelCopyWith<$Res>? get languageStyleSettings;
}

/// @nodoc
class __$$LanguageSettingsImplCopyWithImpl<$Res>
    extends _$LanguageSettingsModelCopyWithImpl<$Res, _$LanguageSettingsImpl>
    implements _$$LanguageSettingsImplCopyWith<$Res> {
  __$$LanguageSettingsImplCopyWithImpl(_$LanguageSettingsImpl _value,
      $Res Function(_$LanguageSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultChatbotLanguage = freezed,
    Object? defaultCallbotLanguage = freezed,
    Object? languageStyleSettings = freezed,
  }) {
    return _then(_$LanguageSettingsImpl(
      defaultChatbotLanguage: freezed == defaultChatbotLanguage
          ? _value.defaultChatbotLanguage
          : defaultChatbotLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      defaultCallbotLanguage: freezed == defaultCallbotLanguage
          ? _value.defaultCallbotLanguage
          : defaultCallbotLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
      languageStyleSettings: freezed == languageStyleSettings
          ? _value.languageStyleSettings
          : languageStyleSettings // ignore: cast_nullable_to_non_nullable
              as LanguageStyleSettingsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageSettingsImpl implements _LanguageSettings {
  const _$LanguageSettingsImpl(
      {@JsonKey(name: "default_chatbot_language")
      required this.defaultChatbotLanguage,
      @JsonKey(name: "default_callbot_language")
      required this.defaultCallbotLanguage,
      @JsonKey(name: "language_style_settings") this.languageStyleSettings});

  factory _$LanguageSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageSettingsImplFromJson(json);

  @override
  @JsonKey(name: "default_chatbot_language")
  final String? defaultChatbotLanguage;
  @override
  @JsonKey(name: "default_callbot_language")
  final String? defaultCallbotLanguage;
  @override
  @JsonKey(name: "language_style_settings")
  final LanguageStyleSettingsModel? languageStyleSettings;

  @override
  String toString() {
    return 'LanguageSettingsModel(defaultChatbotLanguage: $defaultChatbotLanguage, defaultCallbotLanguage: $defaultCallbotLanguage, languageStyleSettings: $languageStyleSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageSettingsImpl &&
            (identical(other.defaultChatbotLanguage, defaultChatbotLanguage) ||
                other.defaultChatbotLanguage == defaultChatbotLanguage) &&
            (identical(other.defaultCallbotLanguage, defaultCallbotLanguage) ||
                other.defaultCallbotLanguage == defaultCallbotLanguage) &&
            (identical(other.languageStyleSettings, languageStyleSettings) ||
                other.languageStyleSettings == languageStyleSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, defaultChatbotLanguage,
      defaultCallbotLanguage, languageStyleSettings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageSettingsImplCopyWith<_$LanguageSettingsImpl> get copyWith =>
      __$$LanguageSettingsImplCopyWithImpl<_$LanguageSettingsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageSettingsImplToJson(
      this,
    );
  }
}

abstract class _LanguageSettings implements LanguageSettingsModel {
  const factory _LanguageSettings(
          {@JsonKey(name: "default_chatbot_language")
          required final String? defaultChatbotLanguage,
          @JsonKey(name: "default_callbot_language")
          required final String? defaultCallbotLanguage,
          @JsonKey(name: "language_style_settings")
          final LanguageStyleSettingsModel? languageStyleSettings}) =
      _$LanguageSettingsImpl;

  factory _LanguageSettings.fromJson(Map<String, dynamic> json) =
      _$LanguageSettingsImpl.fromJson;

  @override
  @JsonKey(name: "default_chatbot_language")
  String? get defaultChatbotLanguage;
  @override
  @JsonKey(name: "default_callbot_language")
  String? get defaultCallbotLanguage;
  @override
  @JsonKey(name: "language_style_settings")
  LanguageStyleSettingsModel? get languageStyleSettings;
  @override
  @JsonKey(ignore: true)
  _$$LanguageSettingsImplCopyWith<_$LanguageSettingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageStyleSettingsModel _$LanguageStyleSettingsModelFromJson(
    Map<String, dynamic> json) {
  return _LanguageStyleSettings.fromJson(json);
}

/// @nodoc
mixin _$LanguageStyleSettingsModel {
  @JsonKey(name: "language_style_id")
  dynamic get languageStyleId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageStyleSettingsModelCopyWith<LanguageStyleSettingsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStyleSettingsModelCopyWith<$Res> {
  factory $LanguageStyleSettingsModelCopyWith(LanguageStyleSettingsModel value,
          $Res Function(LanguageStyleSettingsModel) then) =
      _$LanguageStyleSettingsModelCopyWithImpl<$Res,
          LanguageStyleSettingsModel>;
  @useResult
  $Res call({@JsonKey(name: "language_style_id") dynamic languageStyleId});
}

/// @nodoc
class _$LanguageStyleSettingsModelCopyWithImpl<$Res,
        $Val extends LanguageStyleSettingsModel>
    implements $LanguageStyleSettingsModelCopyWith<$Res> {
  _$LanguageStyleSettingsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageStyleId = freezed,
  }) {
    return _then(_value.copyWith(
      languageStyleId: freezed == languageStyleId
          ? _value.languageStyleId
          : languageStyleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStyleSettingsImplCopyWith<$Res>
    implements $LanguageStyleSettingsModelCopyWith<$Res> {
  factory _$$LanguageStyleSettingsImplCopyWith(
          _$LanguageStyleSettingsImpl value,
          $Res Function(_$LanguageStyleSettingsImpl) then) =
      __$$LanguageStyleSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "language_style_id") dynamic languageStyleId});
}

/// @nodoc
class __$$LanguageStyleSettingsImplCopyWithImpl<$Res>
    extends _$LanguageStyleSettingsModelCopyWithImpl<$Res,
        _$LanguageStyleSettingsImpl>
    implements _$$LanguageStyleSettingsImplCopyWith<$Res> {
  __$$LanguageStyleSettingsImplCopyWithImpl(_$LanguageStyleSettingsImpl _value,
      $Res Function(_$LanguageStyleSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageStyleId = freezed,
  }) {
    return _then(_$LanguageStyleSettingsImpl(
      languageStyleId: freezed == languageStyleId
          ? _value.languageStyleId
          : languageStyleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageStyleSettingsImpl implements _LanguageStyleSettings {
  const _$LanguageStyleSettingsImpl(
      {@JsonKey(name: "language_style_id") this.languageStyleId});

  factory _$LanguageStyleSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageStyleSettingsImplFromJson(json);

  @override
  @JsonKey(name: "language_style_id")
  final dynamic languageStyleId;

  @override
  String toString() {
    return 'LanguageStyleSettingsModel(languageStyleId: $languageStyleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStyleSettingsImpl &&
            const DeepCollectionEquality()
                .equals(other.languageStyleId, languageStyleId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(languageStyleId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStyleSettingsImplCopyWith<_$LanguageStyleSettingsImpl>
      get copyWith => __$$LanguageStyleSettingsImplCopyWithImpl<
          _$LanguageStyleSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageStyleSettingsImplToJson(
      this,
    );
  }
}

abstract class _LanguageStyleSettings implements LanguageStyleSettingsModel {
  const factory _LanguageStyleSettings(
          {@JsonKey(name: "language_style_id") final dynamic languageStyleId}) =
      _$LanguageStyleSettingsImpl;

  factory _LanguageStyleSettings.fromJson(Map<String, dynamic> json) =
      _$LanguageStyleSettingsImpl.fromJson;

  @override
  @JsonKey(name: "language_style_id")
  dynamic get languageStyleId;
  @override
  @JsonKey(ignore: true)
  _$$LanguageStyleSettingsImplCopyWith<_$LanguageStyleSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
