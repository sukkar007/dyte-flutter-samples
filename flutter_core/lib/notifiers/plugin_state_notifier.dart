import 'package:dyte_core/dyte_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PluginNotifer extends Notifier<List<DytePlugin>>
    with DyteDataEventsListener {
  @override
  void onPluginUpdate(List<DytePlugin> plugin) {
    state = plugin;
  }

  @override
  List<DytePlugin> build() {
    return [];
  }
}
