import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/di/di.dart';
import 'package:flutter_core/notifiers/states/poll_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPollNotifer extends Notifier<PollStates> with DytePollEventsListener {
  @override
  void onNewPoll(DytePollMessage poll) {
    super.onNewPoll(poll);
    state = OnNewPoll(poll);
  }

  @override
  PollStates build() {
    return InitialPollState();
  }
}

class PollListNotifier extends Notifier<List<DytePollMessage>>
    with DytePollEventsListener {
  @override
  List<DytePollMessage> build() {
    return dyteMobileClient.polls.polls;
  }

  @override
  void onPollUpdates(List<DytePollMessage> polls) {
    state = polls;
  }
}
