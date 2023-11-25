import 'package:dyte_core/dyte_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant_event_states.freezed.dart';

@freezed
class ParticipantEventStates with _$ParticipantEventStates {
  const factory ParticipantEventStates.initial() = _ParticipantEventStates;

  const factory ParticipantEventStates.onParticipantJoin(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnParticipantJoin;

  const factory ParticipantEventStates.onParticipantLeave(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnParticipantLeave;

  const factory ParticipantEventStates.onScreenSharesUpdated() =
      _ParticipantEventStatesOnScreenSharesUpdated;

  const factory ParticipantEventStates.onScreenShareStarted(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnScreenShareStarted;

  const factory ParticipantEventStates.onScreenShareEnded(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnScreenShareEnded;

  const factory ParticipantEventStates.onAudioUpdate({
    required bool audioEnabled,
    required DyteMeetingParticipant participant,
  }) = _ParticipantEventStatesAudioUpdate;

  const factory ParticipantEventStates.onVideoUpdate(
          {required bool videoEnabled,
          required DyteMeetingParticipant participant}) =
      _ParticipantEventStatesVideoUpdate;

  const factory ParticipantEventStates.onActiveSpeakerChanged(
          DyteMeetingParticipant participant) =
      _ParticipantEventStateOnActiveSpeakerChanged;

  const factory ParticipantEventStates.onNoActiveSpeaker() =
      _ParticipantEventStatesOnNoActiveSpeaker;

  const factory ParticipantEventStates.onParticipantPinned(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnParticipantPinned;

  const factory ParticipantEventStates.onParticipantUnpinned() =
      _ParticipantEventStatesOnParticipantUnpinned;

  const factory ParticipantEventStates.onUpdate(DyteParticipants participants) =
      _ParticipantEventStatesOnUpdate;

  const factory ParticipantEventStates.onActiveParticipantsChanged(
          {required List<DyteMeetingParticipant> activeParticipants}) =
      _OnActiveParticipantsChanged;

  const factory ParticipantEventStates.onWaitListParticipantAccepted(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnWaitListParticipantAccepted;

  const factory ParticipantEventStates.onWaitListParticipantClosed(
          DyteMeetingParticipant participant) =
      _ParticipantEventStateOnWaitListParticipantClosed;

  const factory ParticipantEventStates.onWaitListParticipantJoined(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnWaitListParticipantJoined;

  const factory ParticipantEventStates.onWaitListParticipantRejected(
          DyteMeetingParticipant participant) =
      _ParticipantEventStatesOnWaitListParticipantRejected;
}
