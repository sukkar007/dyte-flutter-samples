import 'package:dyte_core/dyte_core.dart';

class LocalUserSettingsRepository {
  final DyteMobileClient dyteMobileClient;
  LocalUserSettingsRepository(this.dyteMobileClient);

  bool isAudioEnabled = false;

  bool isVideoEnabled = false;

  bool toggleAudio() {
    if (isAudioEnabled) {
      dyteMobileClient.localUser.disableAudio();
    } else {
      dyteMobileClient.localUser.enableAudio();
    }
    return isAudioEnabled = !isAudioEnabled;
  }

  bool toggleVideo() {
    if (isVideoEnabled) {
      dyteMobileClient.localUser.disableVideo();
    } else {
      dyteMobileClient.localUser.enableVideo();
    }
    return isVideoEnabled = !isVideoEnabled;
  }
}
