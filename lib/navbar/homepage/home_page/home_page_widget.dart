import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    animationsMap.addAll({
      'listViewOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'listViewOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AudioboookRecord>>(
      stream: queryAudioboookRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<AudioboookRecord> homePageAudioboookRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/Asset_2.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 298.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('search');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Opacity(
                                        opacity: 0.4,
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Search',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
                                        child: Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Icon(
                              Icons.notifications_rounded,
                              color: FlutterFlowTheme.of(context).blue,
                              size: 34.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: SizedBox(
                          width: 3000.0,
                          height: 180.0,
                          child: CarouselSlider(
                            items: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/images/Request_Your_own_Audiobook.jpg',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/images/Beige_and_Green_Modern_Summer_Travel_Promotion_Banner.jpg',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  'assets/images/7_days_free_trial.jpg',
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                            carouselController: _model.carouselController ??=
                                CarouselController(),
                            options: CarouselOptions(
                              initialPage: 1,
                              viewportFraction: 0.8,
                              disableCenter: true,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.25,
                              enableInfiniteScroll: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 400),
                              autoPlayInterval:
                                  const Duration(milliseconds: (400 + 4000)),
                              autoPlayCurve: Curves.linear,
                              pauseAutoPlayInFiniteScroll: true,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 404.0,
                        height: 220.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0x3B105DFB),
                              FlutterFlowTheme.of(context).primaryBackground
                            ],
                            stops: const [0.0, 1.0],
                            begin: const AlignmentDirectional(0.0, -1.0),
                            end: const AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: 436.0,
                              height: 110.0,
                              decoration: const BoxDecoration(
                                color: Color(0x00FFFFFF),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                alignment: const AlignmentDirectional(
                                                    10.0, 0.0),
                                                image: Image.asset(
                                                  'assets/images/jpeg-optimizer_14979155_SL_052721_43350_04_(1)_(1).jpg',
                                                ).image,
                                              ),
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x33000000),
                                                  offset: Offset(
                                                    0.0,
                                                    2.0,
                                                  ),
                                                )
                                              ],
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                  FlutterFlowTheme.of(context)
                                                      .secondary
                                                ],
                                                stops: const [0.0, 1.0],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Top 10',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/jpeg-optimizer_2150929946.jpg',
                                                ).image,
                                              ),
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                  FlutterFlowTheme.of(context)
                                                      .secondary
                                                ],
                                                stops: const [0.0, 1.0],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Biography',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/GettyImages-547087929-59abe2d7396e5a001065880e.jpg',
                                                ).image,
                                              ),
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                  FlutterFlowTheme.of(context)
                                                      .secondary
                                                ],
                                                stops: const [0.0, 1.0],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Finance',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/jpeg-optimizer_104764.jpg',
                                                ).image,
                                              ),
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                  FlutterFlowTheme.of(context)
                                                      .secondary
                                                ],
                                                stops: const [0.0, 1.0],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 2.0, 0.0, 0.0),
                                          child: Text(
                                            'Business',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Inter',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/20058520_6196952.jpg',
                                            ).image,
                                          ),
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary
                                            ],
                                            stops: const [0.0, 1.0],
                                            begin:
                                                const AlignmentDirectional(0.0, -1.0),
                                            end: const AlignmentDirectional(0, 1.0),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'Stocks',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/jpeg-optimizer_woman-enjoying-movie-night.jpg',
                                            ).image,
                                          ),
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary
                                            ],
                                            stops: const [0.0, 1.0],
                                            begin:
                                                const AlignmentDirectional(0.0, -1.0),
                                            end: const AlignmentDirectional(0, 1.0),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'New',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 70.0,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/jpeg-optimizer_9602.jpg',
                                            ).image,
                                          ),
                                          gradient: LinearGradient(
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              FlutterFlowTheme.of(context)
                                                  .secondary
                                            ],
                                            stops: const [0.0, 1.0],
                                            begin:
                                                const AlignmentDirectional(0.0, -1.0),
                                            end: const AlignmentDirectional(0, 1.0),
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'History',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      StreamBuilder<List<AudioboookRecord>>(
                                        stream: queryAudioboookRecord(
                                          queryBuilder: (audioboookRecord) =>
                                              audioboookRecord.where(
                                            'category',
                                            isEqualTo: 'SELF HELP',
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<AudioboookRecord>
                                              containerAudioboookRecordList =
                                              snapshot.data!;
                                          return Container(
                                            width: 70.0,
                                            height: 70.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/jpeg-optimizer_2148689422.jpg',
                                                ).image,
                                              ),
                                              gradient: LinearGradient(
                                                colors: [
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                  FlutterFlowTheme.of(context)
                                                      .secondary
                                                ],
                                                stops: const [0.0, 1.0],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              shape: BoxShape.circle,
                                            ),
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 0.0),
                                        child: Text(
                                          'Self Help',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Text(
                              'TOP 10 AUDIO BOOKS',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 5.0, 15.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AudioboookRecord>>(
                          stream: queryAudioboookRecord(
                            queryBuilder: (audioboookRecord) =>
                                audioboookRecord.where(
                              'top10',
                              isEqualTo: true,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<AudioboookRecord>
                                listViewAudioboookRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAudioboookRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 10.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAudioboookRecord =
                                    listViewAudioboookRecordList[listViewIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'BOOKPAGE',
                                      queryParameters: {
                                        'id': serializeParam(
                                          listViewAudioboookRecord.audiobookid,
                                          ParamType.int,
                                        ),
                                        'coverphoto': serializeParam(
                                          listViewAudioboookRecord.coverphoto,
                                          ParamType.String,
                                        ),
                                        'name': serializeParam(
                                          listViewAudioboookRecord.name,
                                          ParamType.String,
                                        ),
                                        'authername': serializeParam(
                                          listViewAudioboookRecord.authername,
                                          ParamType.String,
                                        ),
                                        'category': serializeParam(
                                          listViewAudioboookRecord.category,
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          listViewAudioboookRecord.description,
                                          ParamType.String,
                                        ),
                                        'episodes': serializeParam(
                                          listViewAudioboookRecord.episodes,
                                          ParamType.String,
                                          isList: true,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Container(
                                    width: 130.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: Image.network(
                                          listViewAudioboookRecord.coverphoto,
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                );
                              },
                            ).animateOnPageLoad(
                                animationsMap['listViewOnPageLoadAnimation1']!);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Text(
                              'DAILY RECOMENDATION',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AudioboookRecord>>(
                          stream: queryAudioboookRecord(
                            queryBuilder: (audioboookRecord) =>
                                audioboookRecord.where(
                              'dailyrec',
                              isEqualTo: true,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<AudioboookRecord>
                                listViewAudioboookRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAudioboookRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 10.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAudioboookRecord =
                                    listViewAudioboookRecordList[listViewIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'BOOKPAGE',
                                      queryParameters: {
                                        'id': serializeParam(
                                          listViewAudioboookRecord.audiobookid,
                                          ParamType.int,
                                        ),
                                        'coverphoto': serializeParam(
                                          listViewAudioboookRecord.coverphoto,
                                          ParamType.String,
                                        ),
                                        'name': serializeParam(
                                          listViewAudioboookRecord.name,
                                          ParamType.String,
                                        ),
                                        'authername': serializeParam(
                                          listViewAudioboookRecord.authername,
                                          ParamType.String,
                                        ),
                                        'category': serializeParam(
                                          listViewAudioboookRecord.category,
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          listViewAudioboookRecord.description,
                                          ParamType.String,
                                        ),
                                        'episodes': serializeParam(
                                          listViewAudioboookRecord.episodes,
                                          ParamType.String,
                                          isList: true,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      listViewAudioboookRecord.coverphoto,
                                      width: 130.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Text(
                              'BEST SELFHELP BOOKS',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AudioboookRecord>>(
                          stream: queryAudioboookRecord(
                            queryBuilder: (audioboookRecord) =>
                                audioboookRecord.where(
                              'category',
                              isEqualTo: 'SELF HELP',
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<AudioboookRecord>
                                listViewAudioboookRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAudioboookRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 10.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAudioboookRecord =
                                    listViewAudioboookRecordList[listViewIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'BOOKPAGE',
                                      queryParameters: {
                                        'id': serializeParam(
                                          listViewAudioboookRecord.audiobookid,
                                          ParamType.int,
                                        ),
                                        'coverphoto': serializeParam(
                                          listViewAudioboookRecord.coverphoto,
                                          ParamType.String,
                                        ),
                                        'name': serializeParam(
                                          listViewAudioboookRecord.name,
                                          ParamType.String,
                                        ),
                                        'authername': serializeParam(
                                          listViewAudioboookRecord.authername,
                                          ParamType.String,
                                        ),
                                        'category': serializeParam(
                                          listViewAudioboookRecord.category,
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          listViewAudioboookRecord.description,
                                          ParamType.String,
                                        ),
                                        'episodes': serializeParam(
                                          listViewAudioboookRecord.episodes,
                                          ParamType.String,
                                          isList: true,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.network(
                                      listViewAudioboookRecord.coverphoto,
                                      width: 130.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Text(
                              'BEST FINANCIAL BOOKS',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AudioboookRecord>>(
                          stream: queryAudioboookRecord(
                            queryBuilder: (audioboookRecord) =>
                                audioboookRecord.where(
                              'category',
                              isEqualTo: 'FINANCE',
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<AudioboookRecord>
                                listViewAudioboookRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAudioboookRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 10.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAudioboookRecord =
                                    listViewAudioboookRecordList[listViewIndex];
                                return Container(
                                  width: 130.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'BOOKPAGE',
                                        queryParameters: {
                                          'id': serializeParam(
                                            listViewAudioboookRecord
                                                .audiobookid,
                                            ParamType.int,
                                          ),
                                          'coverphoto': serializeParam(
                                            listViewAudioboookRecord.coverphoto,
                                            ParamType.String,
                                          ),
                                          'name': serializeParam(
                                            listViewAudioboookRecord.name,
                                            ParamType.String,
                                          ),
                                          'authername': serializeParam(
                                            listViewAudioboookRecord.authername,
                                            ParamType.String,
                                          ),
                                          'category': serializeParam(
                                            listViewAudioboookRecord.category,
                                            ParamType.String,
                                          ),
                                          'description': serializeParam(
                                            listViewAudioboookRecord
                                                .description,
                                            ParamType.String,
                                          ),
                                          'episodes': serializeParam(
                                            listViewAudioboookRecord.episodes,
                                            ParamType.String,
                                            isList: true,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        listViewAudioboookRecord.coverphoto,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ).animateOnPageLoad(
                                animationsMap['listViewOnPageLoadAnimation2']!);
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 5.0),
                            child: Text(
                              'BEST PSYCHOLOGY BOOKS',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                      child: Container(
                        width: 400.0,
                        height: 170.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<AudioboookRecord>>(
                          stream: queryAudioboookRecord(
                            queryBuilder: (audioboookRecord) =>
                                audioboookRecord.where(
                              'category',
                              isEqualTo: 'PSYCHOLOGY',
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<AudioboookRecord>
                                listViewAudioboookRecordList = snapshot.data!;
                            return ListView.separated(
                              padding: EdgeInsets.zero,
                              primary: false,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewAudioboookRecordList.length,
                              separatorBuilder: (_, __) =>
                                  const SizedBox(width: 10.0),
                              itemBuilder: (context, listViewIndex) {
                                final listViewAudioboookRecord =
                                    listViewAudioboookRecordList[listViewIndex];
                                return Container(
                                  width: 130.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'BOOKPAGE',
                                        queryParameters: {
                                          'id': serializeParam(
                                            listViewAudioboookRecord
                                                .audiobookid,
                                            ParamType.int,
                                          ),
                                          'coverphoto': serializeParam(
                                            listViewAudioboookRecord.coverphoto,
                                            ParamType.String,
                                          ),
                                          'name': serializeParam(
                                            listViewAudioboookRecord.name,
                                            ParamType.String,
                                          ),
                                          'authername': serializeParam(
                                            listViewAudioboookRecord.authername,
                                            ParamType.String,
                                          ),
                                          'category': serializeParam(
                                            listViewAudioboookRecord.category,
                                            ParamType.String,
                                          ),
                                          'description': serializeParam(
                                            listViewAudioboookRecord
                                                .description,
                                            ParamType.String,
                                          ),
                                          'episodes': serializeParam(
                                            listViewAudioboookRecord.episodes,
                                            ParamType.String,
                                            isList: true,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.network(
                                        listViewAudioboookRecord.coverphoto,
                                        width: 300.0,
                                        height: 200.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      width: 360.0,
                      height: 150.0,
                      decoration: const BoxDecoration(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
