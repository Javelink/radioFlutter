import 'player_bloc.dart';
import 'package:flutter/material.dart';

@immutable
abstract class PlayerState {}

class PlayingState extends PlayerState {}

class PausedState extends PlayerState {}