import 'player_bloc.dart';
import 'package:flutter/widgets.dart';

@immutable
abstract class PlayerEvent {}

class PlayEvent extends PlayerEvent {
  final String url;
  PlayEvent({@required this.url}) : assert(url != null);
}

class PauseEvent extends PlayerEvent {}