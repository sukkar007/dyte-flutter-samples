import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_core/notifiers/states/router_states.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RouterNotifier extends Notifier<RouterStates>
    with DyteMeetingRoomEventsListener, DyteSelfEventsListener {
  @override
  RouterStates build() {
    return RouterInitial();
  }

  @override
  void onMeetingInitStarted() {
    state = OnRouterMeetingInitStarted();
  }

  @override
  void onMeetingInitCompleted() {
    state = OnRouterMeetingInitCompleted();
  }

  @override
  void onMeetingInitFailed(Exception exception) {
    state = OnRouterMeetingInitFailed(exception);
  }

  @override
  void onMeetingRoomJoinStarted() {
    state = OnRouterMeetingRoomJoinStarted();
  }

  @override
  void onMeetingRoomJoinCompleted() {
    state = OnRouterMeetingRoomJoinCompleted();
  }

  @override
  void onMeetingRoomJoinFailed(Exception exception) {
    state = OnRouterMeetingRoomJoinFailed(exception);
  }

  @override
  void onMeetingRoomLeaveStarted() {
    state = OnRouterMeetingRoomLeaveStarted();
  }

  @override
  void onMeetingRoomLeaveCompleted() {
    state = OnRouterMeetingRoomLeaveCompleted();
  }

  @override
  void onMeetingRoomDisconnected() {
    state = OnRouterMeetingRoomDisconnected();
  }

  @override
  void onWaitListStatusUpdate(DyteWaitListStatus waitListStatus) {
    state = OnRouterSelfWaitingRoomStatusUpdate(waitListStatus);
  }
}
