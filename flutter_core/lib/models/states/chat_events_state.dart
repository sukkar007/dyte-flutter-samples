import 'package:dyte_core/dyte_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_events_state.freezed.dart';

@freezed
abstract class DyteChatStates with _$DyteChatStates {
  const factory DyteChatStates.initial() = _DyteChatStates;
  const factory DyteChatStates.onNewChatUpdate(DyteChatMessage message) =
      _DyteChatStatesNewChat;
  const factory DyteChatStates.onChatUpdates(List<DyteChatMessage> messages) =
      _DyteChatStatesChatUpdates;
}
