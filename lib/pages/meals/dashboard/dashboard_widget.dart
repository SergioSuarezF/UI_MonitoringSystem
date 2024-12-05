import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Dashboard'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('DASHBOARD_PAGE_Dashboard_ON_INIT_STATE');
      logFirebaseEvent('Dashboard_haptic_feedback');
      HapticFeedback.mediumImpact();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 32.0, 16.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 6.0),
                            child: Text(
                              valueOrDefault<String>(
                                functions
                                    .returnProfileGreeting(getCurrentTimestamp),
                                'Hello,',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => Text(
                              currentUserDisplayName,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Sora',
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Text(
                                  'Selecciona el ejercicio que realizará el estudiante:',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBCFD4),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, -1.0),
                              image: Image.asset(
                                'assets/images/DALLE_2024-11-10_00.01.21_-_Minimalist_illustration_of_a_person_throwing_a_ball,_drawn_with_simple_white_lines_and_shapes,_transparent_background._The_person_is_in_a_dynamic_thro.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DASHBOARD_LANZAMIENTO_DE_PELOTA_BTN_ON_T');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('BallThrowing');
                              },
                              text: 'Lanzamiento de Pelota',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFAA0001),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18.0),
                                  bottomRight: Radius.circular(18.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBCFD4),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, -1.0),
                              image: Image.asset(
                                'assets/images/DALLE_2024-11-10_00.27.22_-_Minimalist_illustration_of_a_person_performing_small_jumps_with_both_feet_and_legs_together,_simple_white_line_drawing._The_legs_are_straight_down,_fe.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DASHBOARD_SALTOS_EN_2_PIES_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Jumping');
                              },
                              text: 'Saltos en 2 Pies',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFAA0001),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18.0),
                                  bottomRight: Radius.circular(18.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBCFD4),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, 0.0),
                              image: Image.asset(
                                'assets/images/DALLE_2024-11-10_00.32.31_-_Minimalist_illustration_of_a_person_on_all_fours,_simple_white_line_drawing_with_minimal_details._Transparent_background,_designed_for_use_on_a_dark_b.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DASHBOARD_PAGE_GATEAR_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Crawling');
                              },
                              text: 'Gatear',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFAA0001),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18.0),
                                  bottomRight: Radius.circular(18.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFEBCFD4),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.0, -1.0),
                              image: Image.asset(
                                'assets/images/DALLE_2024-11-10_00.39.21_-_Minimalist_illustration_of_two_men,_one_standing_and_the_other_sitting_on_a_chair,_simple_white_line_drawing_with_minimal_detail._Transparent_backgrou.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'DASHBOARD_PARARSE_Y_SENTARSE_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('SitDown_StandUp');
                              },
                              text: 'Pararse y Sentarse',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height:
                                    MediaQuery.sizeOf(context).height * 0.05,
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                iconAlignment: IconAlignment.start,
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: Color(0xFFAA0001),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Inter',
                                      color: Colors.white,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18.0),
                                  bottomRight: Radius.circular(18.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
