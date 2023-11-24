import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/notifiers/states/chat_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatNotifier extends StateNotifier<ChatStates>
    with DyteChatEventsListener {
  ChatNotifier() : super(const ChatStates.initial());

  @override
  void onChatUpdates(List<DyteChatMessage> messages) {
    state = ChatStates.onChatUpdates(messages);
  }

  @override
  void onNewChatMessage(DyteChatMessage message) {
    state = ChatStates.onNewChatMessage(message);
  }
}
