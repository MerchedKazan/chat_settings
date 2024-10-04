// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_depth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationDepthModel _$ConversationDepthModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationDepth.fromJson(json);
}

/// @nodoc
mixin _$ConversationDepthModel {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationDepthModelCopyWith<ConversationDepthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationDepthModelCopyWith<$Res> {
  factory $ConversationDepthModelCopyWith(ConversationDepthModel value,
          $Res Function(ConversationDepthModel) then) =
      _$ConversationDepthModelCopyWithImpl<$Res, ConversationDepthModel>;
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class _$ConversationDepthModelCopyWithImpl<$Res,
        $Val extends ConversationDepthModel>
    implements $ConversationDepthModelCopyWith<$Res> {
  _$ConversationDepthModelCopyWithImpl(this._value, this._then);

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
abstract class _$$ConversationDepthImplCopyWith<$Res>
    implements $ConversationDepthModelCopyWith<$Res> {
  factory _$$ConversationDepthImplCopyWith(_$ConversationDepthImpl value,
          $Res Function(_$ConversationDepthImpl) then) =
      __$$ConversationDepthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id});
}

/// @nodoc
class __$$ConversationDepthImplCopyWithImpl<$Res>
    extends _$ConversationDepthModelCopyWithImpl<$Res, _$ConversationDepthImpl>
    implements _$$ConversationDepthImplCopyWith<$Res> {
  __$$ConversationDepthImplCopyWithImpl(_$ConversationDepthImpl _value,
      $Res Function(_$ConversationDepthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
  }) {
    return _then(_$ConversationDepthImpl(
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
class _$ConversationDepthImpl implements _ConversationDepth {
  const _$ConversationDepthImpl({required this.name, required this.id});

  factory _$ConversationDepthImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationDepthImplFromJson(json);

  @override
  final String name;
  @override
  final String id;

  @override
  String toString() {
    return 'ConversationDepthModel(name: $name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationDepthImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationDepthImplCopyWith<_$ConversationDepthImpl> get copyWith =>
      __$$ConversationDepthImplCopyWithImpl<_$ConversationDepthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationDepthImplToJson(
      this,
    );
  }
}

abstract class _ConversationDepth implements ConversationDepthModel {
  const factory _ConversationDepth(
      {required final String name,
      required final String id}) = _$ConversationDepthImpl;

  factory _ConversationDepth.fromJson(Map<String, dynamic> json) =
      _$ConversationDepthImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$ConversationDepthImplCopyWith<_$ConversationDepthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
