import '../domain/chat_settings_model.dart';

abstract class ChatSettingsEvent {}

class LoadChatSettings extends ChatSettingsEvent {}

class UpdateChatSettings extends ChatSettingsEvent {
  // final ChatSettingsModel settingsModel;  // Data to update
  // UpdateChatSettings(this.settingsModel);
}
class ResetChatSettings extends ChatSettingsEvent {}
