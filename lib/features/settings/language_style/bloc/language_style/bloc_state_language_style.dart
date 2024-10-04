import 'package:chat_settings/features/settings/language_style/domain/language_style_model.dart';

abstract class LanguageStyleState{}

class LanguageStyleInitial extends LanguageStyleState {}
class LanguageStyleLoading extends LanguageStyleState {}
class LanguageStyleLoaded extends LanguageStyleState{
  final List<LangaugeStyleModel> languagesStyle;
  LanguageStyleLoaded(this.languagesStyle);
}

class LanguageStyleError extends LanguageStyleState{
  final String message;
  LanguageStyleError(this.message);
}

