import '../domain/chat_settings_model.dart';

abstract class ChatSettingsState {}

class ChatSettingsInitial extends ChatSettingsState {}
class ChatSettingsLoading extends ChatSettingsState {}
class ChatSettingsLoaded extends ChatSettingsState {
  final ChatSettingsModel chatSettings;
  ChatSettingsLoaded(this.chatSettings);
}
class ChatSettingsError extends ChatSettingsState {
  final String message;
  ChatSettingsError(this.message);
}
