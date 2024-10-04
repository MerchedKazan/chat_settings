import 'package:freezed_annotation/freezed_annotation.dart';
part 'conversation_depth_model.freezed.dart';
part 'conversation_depth_model.g.dart';

@freezed
class ConversationDepthModel with _$ConversationDepthModel{
  const factory ConversationDepthModel({
    required String name,
    required String id,
  })=_ConversationDepth;

factory ConversationDepthModel.fromJson(Map<String,dynamic> json) => _$ConversationDepthModelFromJson(json);

}