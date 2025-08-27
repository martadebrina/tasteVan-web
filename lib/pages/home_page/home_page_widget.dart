import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xC0FFFFFF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Color(0xC0FFFFFF),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Text(
                'TasteVan',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.rubik(
                        fontWeight: FontWeight.w800,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Color(0xFF389834),
                      fontSize: 30.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => Text(
                          'Hello, ${currentUserDisplayName}!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 0.0, 0.0),
                      child: Text(
                        'Let’s explore Vancouver’s flavors.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: Colors.black,
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              width: 350.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFAEAEAE),
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.check_circle,
                                              color: Colors.black,
                                              size: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Visited',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  'Restaurant you\'ve checked in. ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 10.0)),
                                      ),
                                      Container(
                                        width: 32.3,
                                        height: 32.3,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault<String>(
                                                (currentUserDocument?.visited
                                                            ?.toList() ??
                                                        [])
                                                    .length
                                                    .toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              width: 350.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFAEAEAE),
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.favorite,
                                              color: Colors.black,
                                              size: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'Favorites',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  'Your saved favorites.                 ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 10.0)),
                                      ),
                                      Container(
                                        width: 32.3,
                                        height: 32.3,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault<String>(
                                                (currentUserDocument?.favorites
                                                            ?.toList() ??
                                                        [])
                                                    .length
                                                    .toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              width: 350.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFAEAEAE),
                                borderRadius: BorderRadius.circular(0.0),
                                shape: BoxShape.rectangle,
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, -1.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.flag_circle_rounded,
                                              color: Colors.black,
                                              size: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    'To Visit',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.black,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                                Text(
                                                  ' Places to try later.                       ',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 10.0)),
                                      ),
                                      Container(
                                        width: 32.3,
                                        height: 32.3,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              valueOrDefault<String>(
                                                (currentUserDocument?.toVisit
                                                            ?.toList() ??
                                                        [])
                                                    .length
                                                    .toString(),
                                                '0',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Top-Rated Restaurants',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: YelpSearchCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
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
                                        final listViewYelpSearchResponse =
                                            snapshot.data!;

                                        return Builder(
                                          builder: (context) {
                                            final restoTop =
                                                (YelpSearchCall.resto(
                                                          listViewYelpSearchResponse
                                                              .jsonBody,
                                                        )?.toList() ??
                                                        [])
                                                    .take(15)
                                                    .toList();

                                            return ListView.separated(
                                              padding: EdgeInsets.fromLTRB(
                                                5.0,
                                                0,
                                                20.0,
                                                0,
                                              ),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.horizontal,
                                              itemCount: restoTop.length,
                                              separatorBuilder: (_, __) =>
                                                  SizedBox(width: 10.0),
                                              itemBuilder:
                                                  (context, restoTopIndex) {
                                                final restoTopItem =
                                                    restoTop[restoTopIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                        RestoDetailsWidget
                                                            .routeName,
                                                        queryParameters: {
                                                          'receivedImg':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.image_url''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedLoc':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.location.address1''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedCat':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.categories[0].title''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedName':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedPhone':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.phone''',
                                                            ),
                                                            ParamType.int,
                                                          ),
                                                          'receivedURL':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.url''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedMenu':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.attributes.menu_url''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'receivedID':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.id''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'isOpenNow':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.business_hours.is_open_now''',
                                                            ),
                                                            ParamType.bool,
                                                          ),
                                                          'rating':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.rating''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'reviews':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.review_count''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                          'displayPhone':
                                                              serializeParam(
                                                            getJsonField(
                                                              restoTopItem,
                                                              r'''$.display_count''',
                                                            ).toString(),
                                                            ParamType.String,
                                                          ),
                                                        }.withoutNulls,
                                                      );
                                                    },
                                                    child: Container(
                                                      width: 270.0,
                                                      height: 300.0,
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x33000000),
                                                            offset: Offset(
                                                              0.0,
                                                              2.0,
                                                            ),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  restoTopItem,
                                                                  r'''$.image_url''',
                                                                ).toString(),
                                                                width: 250.0,
                                                                height: 130.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                restoTopItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              maxLines: 1,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        20.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                restoTopItem,
                                                                r'''$.location.address1''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                restoTopItem,
                                                                r'''$.categories[0].title''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        5.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .star,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        restoTopItem,
                                                                        r'''$.rating''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            font:
                                                                                GoogleFonts.inter(
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                            color:
                                                                                Colors.black,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  '${valueOrDefault<String>(
                                                                    getJsonField(
                                                                      restoTopItem,
                                                                      r'''$.review_count''',
                                                                    )?.toString(),
                                                                    '0',
                                                                  )} reviews',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: Colors
                                                                            .black,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 20.0)),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        10.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if ((currentUserDocument?.visited?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        true)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                    if ((currentUserDocument?.visited?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        false)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if ((currentUserDocument?.favorites?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        true)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                    if ((currentUserDocument?.favorites?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        false)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if ((currentUserDocument?.toVisit?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        true)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                    if ((currentUserDocument?.toVisit?.toList() ??
                                                                                [])
                                                                            .contains(getJsonField(
                                                                          restoTopItem,
                                                                          r'''$.id''',
                                                                        ).toString()) ==
                                                                        false)
                                                                      AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      restoTopItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      ),
                                                                  ],
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'My Visited List',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          FutureBuilder<ApiCallResponse>(
                                        future: YelpSearchCall.call(),
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
                                          final listViewYelpSearchResponse =
                                              snapshot.data!;

                                          return Builder(
                                            builder: (context) {
                                              final visitedList = YelpSearchCall
                                                          .resto(
                                                    listViewYelpSearchResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          (currentUserDocument
                                                                      ?.visited
                                                                      ?.toList() ??
                                                                  [])
                                                              .contains(
                                                                  getJsonField(
                                                            e,
                                                            r'''$.id''',
                                                          ).toString()) ==
                                                          true)
                                                      .toList()
                                                      ?.toList() ??
                                                  [];

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  5.0,
                                                  0,
                                                  20.0,
                                                  0,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: visitedList.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 10.0),
                                                itemBuilder: (context,
                                                    visitedListIndex) {
                                                  final visitedListItem =
                                                      visitedList[
                                                          visitedListIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          RestoDetailsWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'receivedImg':
                                                                serializeParam(
                                                              '',
                                                              ParamType.String,
                                                            ),
                                                            'receivedLoc':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.location.address1''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedCat':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.categories[0].title''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedName':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedPhone':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.phone''',
                                                              ),
                                                              ParamType.int,
                                                            ),
                                                            'receivedURL':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedMenu':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.attributes.menu_url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedID':
                                                                serializeParam(
                                                              getJsonField(
                                                                visitedListItem,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 270.0,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                child: Image
                                                                    .network(
                                                                  getJsonField(
                                                                    visitedListItem,
                                                                    r'''$.image_url''',
                                                                  ).toString(),
                                                                  width: 250.0,
                                                                  height: 130.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  alignment:
                                                                      Alignment(
                                                                          0.0,
                                                                          -1.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  visitedListItem,
                                                                  r'''$.name''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  listViewYelpSearchResponse
                                                                      .jsonBody,
                                                                  r'''$.location.address1''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  visitedListItem,
                                                                  r'''$.categories[0].title''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          visitedListItem,
                                                                          r'''$.rating''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Colors.black,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    '${valueOrDefault<String>(
                                                                      getJsonField(
                                                                        visitedListItem,
                                                                        r'''$.review_count''',
                                                                      )?.toString(),
                                                                      '0',
                                                                    )} reviews',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            visitedListItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      visitedListItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Saved Favorites',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          FutureBuilder<ApiCallResponse>(
                                        future: YelpSearchCall.call(),
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
                                          final listViewYelpSearchResponse =
                                              snapshot.data!;

                                          return Builder(
                                            builder: (context) {
                                              final favResto = YelpSearchCall
                                                          .resto(
                                                    listViewYelpSearchResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          (currentUserDocument
                                                                      ?.favorites
                                                                      ?.toList() ??
                                                                  [])
                                                              .contains(
                                                                  getJsonField(
                                                            e,
                                                            r'''$.id''',
                                                          ).toString()) ==
                                                          true)
                                                      .toList()
                                                      ?.toList() ??
                                                  [];

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  5.0,
                                                  0,
                                                  20.0,
                                                  0,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: favResto.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 10.0),
                                                itemBuilder:
                                                    (context, favRestoIndex) {
                                                  final favRestoItem =
                                                      favResto[favRestoIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          RestoDetailsWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'receivedImg':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.image_url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedLoc':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.location.address1''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedCat':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.categories[0].title''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedName':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedPhone':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.phone''',
                                                              ),
                                                              ParamType.int,
                                                            ),
                                                            'receivedURL':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedMenu':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.attributes.menu_url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedID':
                                                                serializeParam(
                                                              getJsonField(
                                                                favRestoItem,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 270.0,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                child: Image
                                                                    .network(
                                                                  getJsonField(
                                                                    favRestoItem,
                                                                    r'''$.image_url''',
                                                                  ).toString(),
                                                                  width: 250.0,
                                                                  height: 130.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  favRestoItem,
                                                                  r'''$.name''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  favRestoItem,
                                                                  r'''$.location.address1''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  favRestoItem,
                                                                  r'''$.categories[0].title''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          favRestoItem,
                                                                          r'''$.rating''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Colors.black,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    '${valueOrDefault<String>(
                                                                      getJsonField(
                                                                        favRestoItem,
                                                                        r'''$.review_count''',
                                                                      )?.toString(),
                                                                      '0',
                                                                    )} reviews',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            favRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      favRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Want to Try',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 300.0,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 7.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) =>
                                          FutureBuilder<ApiCallResponse>(
                                        future: YelpSearchCall.call(),
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
                                          final listViewYelpSearchResponse =
                                              snapshot.data!;

                                          return Builder(
                                            builder: (context) {
                                              final nextResto = YelpSearchCall
                                                          .resto(
                                                    listViewYelpSearchResponse
                                                        .jsonBody,
                                                  )
                                                      ?.where((e) =>
                                                          (currentUserDocument
                                                                      ?.toVisit
                                                                      ?.toList() ??
                                                                  [])
                                                              .contains(
                                                                  getJsonField(
                                                            e,
                                                            r'''$.id''',
                                                          ).toString()) ==
                                                          true)
                                                      .toList()
                                                      ?.toList() ??
                                                  [];

                                              return ListView.separated(
                                                padding: EdgeInsets.fromLTRB(
                                                  5.0,
                                                  0,
                                                  20.0,
                                                  0,
                                                ),
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: nextResto.length,
                                                separatorBuilder: (_, __) =>
                                                    SizedBox(width: 10.0),
                                                itemBuilder:
                                                    (context, nextRestoIndex) {
                                                  final nextRestoItem =
                                                      nextResto[nextRestoIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        context.pushNamed(
                                                          RestoDetailsWidget
                                                              .routeName,
                                                          queryParameters: {
                                                            'receivedImg':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.image_url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedLoc':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.location.address1''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedCat':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.categories[0].title''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedName':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.name''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedPhone':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.phone''',
                                                              ),
                                                              ParamType.int,
                                                            ),
                                                            'receivedURL':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedMenu':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.attributes.menu_url''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                            'receivedID':
                                                                serializeParam(
                                                              getJsonField(
                                                                nextRestoItem,
                                                                r'''$.id''',
                                                              ).toString(),
                                                              ParamType.String,
                                                            ),
                                                          }.withoutNulls,
                                                        );
                                                      },
                                                      child: Container(
                                                        width: 270.0,
                                                        height: 300.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4.0,
                                                              color: Color(
                                                                  0x33000000),
                                                              offset: Offset(
                                                                0.0,
                                                                2.0,
                                                              ),
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0,
                                                                      -1.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10.0),
                                                                child: Image
                                                                    .network(
                                                                  getJsonField(
                                                                    nextRestoItem,
                                                                    r'''$.image_url''',
                                                                  ).toString(),
                                                                  width: 250.0,
                                                                  height: 130.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  alignment:
                                                                      Alignment(
                                                                          0.0,
                                                                          -1.0),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  nextRestoItem,
                                                                  r'''$.name''',
                                                                ).toString(),
                                                                maxLines: 1,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  nextRestoItem,
                                                                  r'''$.location.address1''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  nextRestoItem,
                                                                  r'''$.categories[0].title''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      color: Colors
                                                                          .black,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Icon(
                                                                        Icons
                                                                            .star,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          nextRestoItem,
                                                                          r'''$.rating''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Colors.black,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    '${valueOrDefault<String>(
                                                                      getJsonField(
                                                                        nextRestoItem,
                                                                        r'''$.review_count''',
                                                                      )?.toString(),
                                                                      '0',
                                                                    )} reviews',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.visited?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'visited': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.favorites?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.favorite,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'favorites': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          true)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Color(0xFF486344),
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayRemove([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                      if ((currentUserDocument?.toVisit?.toList() ?? [])
                                                                              .contains(getJsonField(
                                                                            nextRestoItem,
                                                                            r'''$.id''',
                                                                          ).toString()) ==
                                                                          false)
                                                                        FlutterFlowIconButton(
                                                                          borderRadius:
                                                                              100.0,
                                                                          buttonSize:
                                                                              40.0,
                                                                          fillColor:
                                                                              Colors.black,
                                                                          icon:
                                                                              Icon(
                                                                            Icons.flag,
                                                                            color:
                                                                                Colors.white,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          onPressed:
                                                                              () async {
                                                                            await currentUserReference!.update({
                                                                              ...mapToFirestore(
                                                                                {
                                                                                  'toVisit': FieldValue.arrayUnion([
                                                                                    getJsonField(
                                                                                      nextRestoItem,
                                                                                      r'''$.id''',
                                                                                    ).toString()
                                                                                  ]),
                                                                                },
                                                                              ),
                                                                            });
                                                                          },
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Recommended for you',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height: 300.0,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) =>
                                            FutureBuilder<ApiCallResponse>(
                                          future: YelpSearchCall.call(),
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
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final listViewYelpSearchResponse =
                                                snapshot.data!;

                                            return Builder(
                                              builder: (context) {
                                                final recResto = YelpSearchCall
                                                            .resto(
                                                      listViewYelpSearchResponse
                                                          .jsonBody,
                                                    )
                                                        ?.where((e) =>
                                                            (currentUserDocument
                                                                        ?.likedByUser
                                                                        ?.toList() ??
                                                                    [])
                                                                .contains(
                                                                    getJsonField(
                                                              e,
                                                              r'''$.id''',
                                                            ).toString()) ==
                                                            true)
                                                        .toList()
                                                        ?.toList() ??
                                                    [];

                                                return ListView.separated(
                                                  padding: EdgeInsets.fromLTRB(
                                                    5.0,
                                                    0,
                                                    20.0,
                                                    0,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: recResto.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(width: 10.0),
                                                  itemBuilder:
                                                      (context, recRestoIndex) {
                                                    final recRestoItem =
                                                        recResto[recRestoIndex];
                                                    return Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              RestoDetailsWidget
                                                                  .routeName,
                                                              queryParameters: {
                                                                'receivedImg':
                                                                    serializeParam(
                                                                  '',
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedLoc':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.location.address1''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedCat':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.categories[0].title''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedName':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.name''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedPhone':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.phone''',
                                                                  ),
                                                                  ParamType.int,
                                                                ),
                                                                'receivedURL':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.url''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedMenu':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.attributes.menu_url''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                                'receivedID':
                                                                    serializeParam(
                                                                  getJsonField(
                                                                    recRestoItem,
                                                                    r'''$.id''',
                                                                  ).toString(),
                                                                  ParamType
                                                                      .String,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Container(
                                                            width: 270.0,
                                                            height: 300.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      4.0,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    2.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          14.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    child: Image
                                                                        .network(
                                                                      getJsonField(
                                                                        recRestoItem,
                                                                        r'''$.image_url''',
                                                                      ).toString(),
                                                                      width:
                                                                          250.0,
                                                                      height:
                                                                          130.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                      alignment:
                                                                          Alignment(
                                                                              0.0,
                                                                              -1.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      recRestoItem,
                                                                      r'''$.name''',
                                                                    ).toString(),
                                                                    maxLines: 1,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              20.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      listViewYelpSearchResponse
                                                                          .jsonBody,
                                                                      r'''$.location.address1''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      recRestoItem,
                                                                      r'''$.categories[0].title''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              Colors.black,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          5.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.star,
                                                                            color:
                                                                                Colors.black,
                                                                            size:
                                                                                24.0,
                                                                          ),
                                                                          Text(
                                                                            getJsonField(
                                                                              recRestoItem,
                                                                              r'''$.rating''',
                                                                            ).toString(),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  color: Colors.black,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        '${valueOrDefault<String>(
                                                                          getJsonField(
                                                                            recRestoItem,
                                                                            r'''$.review_count''',
                                                                          )?.toString(),
                                                                          '0',
                                                                        )} reviews',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              color: Colors.black,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            20.0)),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          10.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if ((currentUserDocument?.visited?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              true)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Color(0xFF486344),
                                                                              icon: Icon(
                                                                                Icons.check,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'visited': FieldValue.arrayRemove([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                          if ((currentUserDocument?.visited?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              false)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Colors.black,
                                                                              icon: Icon(
                                                                                Icons.check,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'visited': FieldValue.arrayUnion([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if ((currentUserDocument?.favorites?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              true)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Color(0xFF486344),
                                                                              icon: Icon(
                                                                                Icons.favorite,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'favorites': FieldValue.arrayRemove([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                          if ((currentUserDocument?.favorites?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              false)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Colors.black,
                                                                              icon: Icon(
                                                                                Icons.favorite,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'favorites': FieldValue.arrayUnion([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          if ((currentUserDocument?.toVisit?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              true)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Color(0xFF486344),
                                                                              icon: Icon(
                                                                                Icons.flag,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'toVisit': FieldValue.arrayRemove([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                          if ((currentUserDocument?.toVisit?.toList() ?? []).contains(getJsonField(
                                                                                recRestoItem,
                                                                                r'''$.id''',
                                                                              ).toString()) ==
                                                                              false)
                                                                            FlutterFlowIconButton(
                                                                              borderRadius: 100.0,
                                                                              buttonSize: 40.0,
                                                                              fillColor: Colors.black,
                                                                              icon: Icon(
                                                                                Icons.flag,
                                                                                color: Colors.white,
                                                                                size: 24.0,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await currentUserReference!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'toVisit': FieldValue.arrayUnion([
                                                                                        getJsonField(
                                                                                          recRestoItem,
                                                                                          r'''$.id''',
                                                                                        ).toString()
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                              },
                                                                            ),
                                                                        ],
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            10.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            );
                                          },
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
