import 'package:chat_settings/features/settings/conversation_depth/domain/conversation_depth_model.dart';

abstract class ConversationDepthState{}

class ConversationDepthInitial extends ConversationDepthState {}
class ConversationDepthLoading extends ConversationDepthState {}
class ConversationDepthLoaded extends ConversationDepthState{
  final List<ConversationDepthModel> conversationDepth;
  ConversationDepthLoaded(this.conversationDepth);
}

class ConversationDepthError extends ConversationDepthState{
  final String message;
  ConversationDepthError(this.message);
}

