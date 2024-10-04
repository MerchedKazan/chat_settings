abstract class ConversationDepthEvent{}

class LoadConversationDepth extends ConversationDepthEvent{}
class AddConversationDepth extends ConversationDepthEvent{
  final String conversationDepth;
  AddConversationDepth(this.conversationDepth);
}