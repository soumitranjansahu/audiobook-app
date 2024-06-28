import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'player_widget.dart' show PlayerWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerModel extends FlutterFlowModel<PlayerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 0;
  int timerMilliseconds1 = 0;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 60000;
  int timerMilliseconds2 = 60000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController1.dispose();
    timerController2.dispose();
  }
}
