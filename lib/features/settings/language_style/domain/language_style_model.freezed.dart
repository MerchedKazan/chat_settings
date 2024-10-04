// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_style_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LangaugeStyleModel _$LangaugeStyleModelFromJson(Map<String, dynamic> json) {
  return _LanguageStyle.fromJson(json);
}

/// @nodoc
mixin _$LangaugeStyleModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LangaugeStyleModelCopyWith<LangaugeStyleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangaugeStyleModelCopyWith<$Res> {
  factory $LangaugeStyleModelCopyWith(
          LangaugeStyleModel value, $Res Function(LangaugeStyleModel) then) =
      _$LangaugeStyleModelCopyWithImpl<$Res, LangaugeStyleModel>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$LangaugeStyleModelCopyWithImpl<$Res, $Val extends LangaugeStyleModel>
    implements $LangaugeStyleModelCopyWith<$Res> {
  _$LangaugeStyleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageStyleImplCopyWith<$Res>
    implements $LangaugeStyleModelCopyWith<$Res> {
  factory _$$LanguageStyleImplCopyWith(
          _$LanguageStyleImpl value, $Res Function(_$LanguageStyleImpl) then) =
      __$$LanguageStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$LanguageStyleImplCopyWithImpl<$Res>
    extends _$LangaugeStyleModelCopyWithImpl<$Res, _$LanguageStyleImpl>
    implements _$$LanguageStyleImplCopyWith<$Res> {
  __$$LanguageStyleImplCopyWithImpl(
      _$LanguageStyleImpl _value, $Res Function(_$LanguageStyleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$LanguageStyleImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageStyleImpl implements _LanguageStyle {
  const _$LanguageStyleImpl({required this.name, required this.id});

  factory _$LanguageStyleImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageStyleImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'LangaugeStyleModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageStyleImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageStyleImplCopyWith<_$LanguageStyleImpl> get copyWith =>
      __$$LanguageStyleImplCopyWithImpl<_$LanguageStyleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageStyleImplToJson(
      this,
    );
  }
}

abstract class _LanguageStyle implements LangaugeStyleModel {
  const factory _LanguageStyle(
      {required final String name,
      required final String id}) = _$LanguageStyleImpl;

  factory _LanguageStyle.fromJson(Map<String, dynamic> json) =
      _$LanguageStyleImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$LanguageStyleImplCopyWith<_$LanguageStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
