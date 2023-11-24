import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/di/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecordingNotifer extends Notifier<DyteRecordingState>
    with DyteRecordingEventsListener {
  @override
  void onMeetingRecordingEnded() {
    state = dyteMobileClient.recording.recordingState;
  }

  @override
  void onMeetingRecordingStarted() {
    state = dyteMobileClient.recording.recordingState;
  }

  @override
  void onMeetingRecordingStateUpdated(DyteRecordingState recordingState) {
    state = dyteMobileClient.recording.recordingState;
  }

  @override
  void onMeetingRecordingStopError() {
    state = dyteMobileClient.recording.recordingState;
  }

  @override
  DyteRecordingState build() {
    return dyteMobileClient.recording.recordingState;
  }
}
