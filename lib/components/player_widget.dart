import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'player_model.dart';
export 'player_model.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({super.key});

  @override
  State<PlayerWidget> createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late PlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 333.0,
      height: 664.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 40.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/81Ls+SBCLiL._SY522_.jpg',
                width: 200.0,
                height: 300.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'ATOMIC HABITS',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
              child: Text(
                'EPISODE 1',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 0.0),
            child: LinearPercentIndicator(
              percent: 0.5,
              lineHeight: 3.0,
              animation: true,
              animateFromLastPercent: true,
              progressColor: FlutterFlowTheme.of(context).primary,
              backgroundColor: FlutterFlowTheme.of(context).secondaryText,
              barRadius: const Radius.circular(10.0),
              padding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowTimer(
                    initialTime: _model.timerInitialTimeMs1,
                    getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                      value,
                      hours: false,
                      milliSecond: false,
                    ),
                    controller: _model.timerController1,
                    updateStateInterval: const Duration(milliseconds: 1000),
                    onChanged: (value, displayTime, shouldUpdate) {
                      _model.timerMilliseconds1 = value;
                      _model.timerValue1 = displayTime;
                      if (shouldUpdate) setState(() {});
                    },
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Readex Pro',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                    child: FlutterFlowTimer(
                      initialTime: _model.timerInitialTimeMs2,
                      getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                        value,
                        hours: false,
                        milliSecond: false,
                      ),
                      controller: _model.timerController2,
                      updateStateInterval: const Duration(milliseconds: 1000),
                      onChanged: (value, displayTime, shouldUpdate) {
                        _model.timerMilliseconds2 = value;
                        _model.timerValue2 = displayTime;
                        if (shouldUpdate) setState(() {});
                      },
                      textAlign: TextAlign.start,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Readex Pro',
                                fontSize: 14.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                    ),
                  ),
                ),
              ].divide(const SizedBox(width: 150.0)),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.skip_previous,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              Icon(
                Icons.replay_10,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              AuthUserStreamWidget(
                builder: (context) => ToggleIcon(
                  onPressed: () async {
                    setState(
                      () => FFAppState().BOOKLIKE.contains(
                              currentUserDocument?.createdTime?.toString())
                          ? FFAppState().removeFromBOOKLIKE(
                              currentUserDocument!.createdTime!.toString())
                          : FFAppState().addToBOOKLIKE(
                              currentUserDocument!.createdTime!.toString()),
                    );
                    _model.soundPlayer ??= AudioPlayer();
                    if (_model.soundPlayer!.playing) {
                      await _model.soundPlayer!.stop();
                    }
                    _model.soundPlayer!.setVolume(1.0);
                    _model.soundPlayer!
                        .setUrl(
                            'https://storage.googleapis.com/hellomp1/Justin%20Bieber%20-%20Baby%20ft.%20Ludacris.mp3')
                        .then((_) => _model.soundPlayer!.play());
                  },
                  value: FFAppState()
                      .BOOKLIKE
                      .contains(currentUserDocument?.createdTime?.toString()),
                  onIcon: Icon(
                    Icons.play_circle_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 45.0,
                  ),
                  offIcon: Icon(
                    Icons.pause_circle,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 45.0,
                  ),
                ),
              ),
              Icon(
                Icons.forward_10,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              Icon(
                Icons.skip_next,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
