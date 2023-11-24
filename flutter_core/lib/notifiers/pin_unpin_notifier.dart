import 'dart:developer';

import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PinNotifier extends Notifier<DyteMeetingParticipant?>
    with DyteParticipantEventsListener {
  @override
  void onParticipantPinned(DyteMeetingParticipant participant) {
    log('onParticipantPinned: ${participant.id}', name: 'DyteClient');
    state = participant;
  }

  @override
  void onParticipantUnpinned(DyteMeetingParticipant participant) {
    state = null;
  }

  @override
  DyteMeetingParticipant? build() {
    return null;
  }
}
