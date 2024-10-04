import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/chat_settings_model.dart';
import '../data/chat_setting_service.dart';
import 'bloc_event.dart';
import 'bloc_state.dart';

class ChatSettingsBloc extends Bloc<ChatSettingsEvent, ChatSettingsState> {
  final ChatSettingsService apiService;
  late ChatSettingsModel chatSettingsModel;
  ChatSettingsBloc(this.apiService) : super(ChatSettingsInitial()) {
    on<LoadChatSettings>(_onLoadChatSettings);
    on<UpdateChatSettings>(_onUpdateChatSettings);
    on<ResetChatSettings>(_onResetChatSettings);
  }

  void _onLoadChatSettings(LoadChatSettings event, Emitter<ChatSettingsState> emit) async {
    emit(ChatSettingsLoading());
    try {
      Map<String, dynamic> data = await apiService.getUserCustomSettings();
      ChatSettingsModel settings = ChatSettingsModel.fromJson(data);
      chatSettingsModel=settings;
      emit(ChatSettingsLoaded(settings));
    } catch (e) {
      emit(ChatSettingsError(e.toString()));
    }
  }
  void _onUpdateChatSettings(UpdateChatSettings event, Emitter<ChatSettingsState> emit) async {
    emit(ChatSettingsLoading());
    try {
      Map<String, dynamic> data = await apiService.updateChatSettings();
      ChatSettingsModel settings = ChatSettingsModel.fromJson(data);
      chatSettingsModel=settings;
      emit(ChatSettingsLoaded(settings));
    } catch (e) {
      emit(ChatSettingsError(e.toString()));
    }
  }
  void _onResetChatSettings(ResetChatSettings event, Emitter<ChatSettingsState> emit) async {
    emit(ChatSettingsLoading());
    try {
      Map<String, dynamic> data = await apiService.getUserResetSettings();
      ChatSettingsModel settings = ChatSettingsModel.fromJson(data);
      chatSettingsModel=settings;
      emit(ChatSettingsLoaded(settings));
    } catch (e) {
      emit(ChatSettingsError(e.toString()));
    }
  }
}
