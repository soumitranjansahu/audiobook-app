import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'otpverification_model.dart';
export 'otpverification_model.dart';

class OtpverificationWidget extends StatefulWidget {
  const OtpverificationWidget({super.key});

  @override
  State<OtpverificationWidget> createState() => _OtpverificationWidgetState();
}

class _OtpverificationWidgetState extends State<OtpverificationWidget> {
  late OtpverificationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpverificationModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Verify Your Phone Number',
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Readex Pro',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 16.0, 0.0),
                child: Text(
                  'Enter the 4-digit code sent to ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 16.0, 0.0),
                child: Text(
                  FFAppState().numberphone,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        color: FlutterFlowTheme.of(context).primary,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 0.0),
                    child: Text(
                      'Didn\'t receive OTP',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 16.0, 0.0),
                    child: Text(
                      'Resend',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              child: PinCodeTextField(
                autoDisposeControllers: false,
                appContext: context,
                length: 4,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                    ),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                enableActiveFill: false,
                autoFocus: true,
                enablePinAutofill: true,
                errorTextSpace: 16.0,
                showCursor: true,
                cursorColor: FlutterFlowTheme.of(context).primary,
                obscureText: false,
                hintCharacter: '●',
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  fieldHeight: 44.0,
                  fieldWidth: 44.0,
                  borderWidth: 2.0,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  shape: PinCodeFieldShape.box,
                  activeColor: FlutterFlowTheme.of(context).primaryText,
                  inactiveColor: FlutterFlowTheme.of(context).alternate,
                  selectedColor: FlutterFlowTheme.of(context).primary,
                  activeFillColor: FlutterFlowTheme.of(context).primaryText,
                  inactiveFillColor: FlutterFlowTheme.of(context).alternate,
                  selectedFillColor: FlutterFlowTheme.of(context).primary,
                ),
                controller: _model.pinCodeController,
                onChanged: (_) {},
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:
                    _model.pinCodeControllerValidator.asValidator(context),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed('HomePage');
              },
              text: 'VERIFY',
              options: FFButtonOptions(
                height: 40.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 3.0,
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
