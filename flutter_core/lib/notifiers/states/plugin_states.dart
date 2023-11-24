import 'package:dyte_core/dyte_core.dart';

abstract class PluginStates {}

class InitialPluginState extends PluginStates {}

class OnPluginActivated extends PluginStates {
  final DytePlugin plugin;

  OnPluginActivated(this.plugin);
}

class OnPluginDeactivated extends PluginStates {
  final DytePlugin plugin;

  OnPluginDeactivated(this.plugin);
}

class OnPluginFileRequest extends PluginStates {
  final DytePlugin plugin;

  OnPluginFileRequest(this.plugin);
}

class OnPluginMessage extends PluginStates {
  final String message;

  OnPluginMessage(this.message);
}
