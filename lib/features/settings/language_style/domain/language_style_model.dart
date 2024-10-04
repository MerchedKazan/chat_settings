import 'package:freezed_annotation/freezed_annotation.dart';
part 'language_style_model.freezed.dart';
part 'language_style_model.g.dart';
@freezed
class LangaugeStyleModel with _$LangaugeStyleModel{
  const factory LangaugeStyleModel({
    required String name,
    required String id,
  })=_LanguageStyle;

factory LangaugeStyleModel.fromJson(Map<String,dynamic> json) => _$LangaugeStyleModelFromJson(json);

}