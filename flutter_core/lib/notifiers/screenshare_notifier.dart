import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/di/di.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenshareNotifier extends Notifier<List<DyteMeetingParticipant>>
    with DyteDataEventsListener {
  @override
  void onScreenShareUpdate(List<DyteMeetingParticipant> screenShares) {
    state = screenShares;
  }

  @override
  List<DyteMeetingParticipant> build() {
    return dyteMobileClient.participants.screenshares;
  }
}
