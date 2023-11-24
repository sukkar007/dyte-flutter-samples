import 'package:dyte_core/dyte_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_states.freezed.dart';

@freezed
class ChatStates with _$ChatStates {
  const factory ChatStates.initial() = _ChatStates;

  const factory ChatStates.onChatUpdates(List<DyteChatMessage> messages) =
      _ChatStatesOnChatUpdates;

  const factory ChatStates.onNewChatMessage(DyteChatMessage message) =
      _ChatStatesOnNewChatMessage;
}
