import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_flutter/just_audio_player.dart';
import 'home_screen.dart';
import 'player_bloc.dart';

void main() => runApp(RadioApp());

class RadioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final JustAudioPlayer radioPlayer = JustAudioPlayer();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<PlayerBloc>(
        create: (context) => PlayerBloc(radioPlayer: radioPlayer),
        child: HomeScreen(),
      ),
    );
  }
}
