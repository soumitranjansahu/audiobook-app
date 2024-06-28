import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'resendemail_model.dart';
export 'resendemail_model.dart';

class ResendemailWidget extends StatefulWidget {
  const ResendemailWidget({super.key});

  @override
  State<ResendemailWidget> createState() => _ResendemailWidgetState();
}

class _ResendemailWidgetState extends State<ResendemailWidget> {
  late ResendemailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResendemailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.0,
      height: 240.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                await authManager.sendEmailVerification();
              },
              text: 'Resend Email',
              options: FFButtonOptions(
                width: 200.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 2.0,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('ProfileCreate');
              },
              text: 'Skip for later',
              options: FFButtonOptions(
                width: 200.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).secondaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
