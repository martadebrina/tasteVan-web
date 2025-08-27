import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_swipeable_stack.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'swipe_page_model.dart';
export 'swipe_page_model.dart';

class SwipePageWidget extends StatefulWidget {
  const SwipePageWidget({super.key});

  static String routeName = 'SwipePage';
  static String routePath = '/swipePage';

  @override
  State<SwipePageWidget> createState() => _SwipePageWidgetState();
}

class _SwipePageWidgetState extends State<SwipePageWidget> {
  late SwipePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SwipePageModel());

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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'It’s a match… with food ❤️',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.rubik(
                            fontWeight: FontWeight.w800,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: Color(0xFF2B6D33),
                          fontSize: 25.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ),
                Text(
                  'Swipe to find your flavor!',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: Colors.black,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 500.0,
                      height: 446.6,
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
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          final swipeableStackYelpSearchResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final allResto = YelpSearchCall.resto(
                                    swipeableStackYelpSearchResponse.jsonBody,
                                  )?.toList() ??
                                  [];

                              return FlutterFlowSwipeableStack(
                                onSwipeFn: (index) {},
                                onLeftSwipe: (index) async {
                                  final allRestoItem = allResto[index];

                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'likedByUser': FieldValue.arrayRemove([
                                          getJsonField(
                                            allRestoItem,
                                            r'''$.id''',
                                          ).toString()
                                        ]),
                                      },
                                    ),
                                  });
                                },
                                onRightSwipe: (index) async {
                                  final allRestoItem = allResto[index];

                                  await currentUserReference!.update({
                                    ...mapToFirestore(
                                      {
                                        'likedByUser': FieldValue.arrayUnion([
                                          getJsonField(
                                            allRestoItem,
                                            r'''$.id''',
                                          ).toString()
                                        ]),
                                      },
                                    ),
                                  });
                                },
                                onUpSwipe: (index) {},
                                onDownSwipe: (index) {},
                                itemBuilder: (context, allRestoIndex) {
                                  final allRestoItem = allResto[allRestoIndex];
                                  return Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    height:
                                        MediaQuery.sizeOf(context).height * 1.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2F2D2D),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              getJsonField(
                                                allRestoItem,
                                                r'''$.image_url''',
                                              ).toString(),
                                              width: double.infinity,
                                              height: 182.27,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                getJsonField(
                                                  allRestoItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: Colors.white,
                                                          fontSize: 25.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    allRestoItem,
                                                    r'''$.location.address1''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
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
                                                        color: Colors.white,
                                                        fontSize: 20.0,
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
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    allRestoItem,
                                                    r'''$.categories[0].title''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
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
                                                        color: Colors.white,
                                                        fontSize: 20.0,
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
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model
                                                      .swipeableStackController
                                                      .swipeLeft();
                                                },
                                                child: Icon(
                                                  Icons.thumb_down,
                                                  color: Colors.white,
                                                  size: 40.0,
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
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
                                                          allRestoItem,
                                                          r'''$.image_url''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedLoc':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.location.address1''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedCat':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.categories[0].title''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedName':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedPhone':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.phone''',
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                      'receivedURL':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.url''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedMenu':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.attributes.menu_url''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'receivedID':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.id''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'isOpenNow':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.business_hours.is_open_now''',
                                                        ),
                                                        ParamType.bool,
                                                      ),
                                                      'rating': serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.rating''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'reviews': serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.review_count''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                      'displayPhone':
                                                          serializeParam(
                                                        getJsonField(
                                                          allRestoItem,
                                                          r'''$.display_phone''',
                                                        ).toString(),
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.info_sharp,
                                                  color: Colors.white,
                                                  size: 40.0,
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model
                                                      .swipeableStackController
                                                      .swipeRight();
                                                },
                                                child: Icon(
                                                  Icons.thumb_up,
                                                  color: Colors.white,
                                                  size: 40.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                itemCount: allResto.length,
                                controller: _model.swipeableStackController,
                                loop: false,
                                cardDisplayCount: 3,
                                scale: 0.9,
                                cardPadding: EdgeInsets.all(24.0),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Your Top Picks ',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                              height: 295.0,
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
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
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
                                          final swipeRes = YelpSearchCall.resto(
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
                                            scrollDirection: Axis.horizontal,
                                            itemCount: swipeRes.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(width: 10.0),
                                            itemBuilder:
                                                (context, swipeResIndex) {
                                              final swipeResItem =
                                                  swipeRes[swipeResIndex];
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
                                                            swipeResItem,
                                                            r'''$.image_url''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedLoc':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.location.address1''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedCat':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.categories[0].title''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedName':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.name''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedPhone':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.phone''',
                                                          ),
                                                          ParamType.int,
                                                        ),
                                                        'receivedURL':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.url''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedMenu':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.attributes.menu_url''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                        'receivedID':
                                                            serializeParam(
                                                          getJsonField(
                                                            swipeResItem,
                                                            r'''$.id''',
                                                          ).toString(),
                                                          ParamType.String,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: Container(
                                                    width: 270.0,
                                                    height: 295.0,
                                                    decoration: BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          blurRadius: 4.0,
                                                          color:
                                                              Color(0x33000000),
                                                          offset: Offset(
                                                            0.0,
                                                            2.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
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
                                                                  0.0, -1.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            child:
                                                                Image.network(
                                                              getJsonField(
                                                                swipeResItem,
                                                                r'''$.image_url''',
                                                              ).toString(),
                                                              width: 250.0,
                                                              height: 130.0,
                                                              fit: BoxFit.cover,
                                                              alignment:
                                                                  Alignment(0.0,
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
                                                              swipeResItem,
                                                              r'''$.name''',
                                                            ).toString(),
                                                            maxLines: 1,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                              swipeResItem,
                                                              r'''$.location.address1''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                              swipeResItem,
                                                              r'''$.categories[0].title''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
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
                                                                    Icons.star,
                                                                    color: Colors
                                                                        .black,
                                                                    size: 24.0,
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      swipeResItem,
                                                                      r'''$.rating''',
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
                                                                ],
                                                              ),
                                                              Text(
                                                                '${valueOrDefault<String>(
                                                                  getJsonField(
                                                                    swipeResItem,
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
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      true)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Color(
                                                                              0xFF486344),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .check,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'visited': FieldValue.arrayRemove([
                                                                                getJsonField(
                                                                                  swipeResItem,
                                                                                  r'''$.id''',
                                                                                ).toString()
                                                                              ]),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                    ),
                                                                  if ((currentUserDocument?.visited?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      false)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Colors
                                                                              .black,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .check,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'visited': FieldValue.arrayUnion([
                                                                                getJsonField(
                                                                                  swipeResItem,
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
                                                                  if ((currentUserDocument?.favorites?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      true)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Color(
                                                                              0xFF486344),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'favorites': FieldValue.arrayRemove([
                                                                                getJsonField(
                                                                                  swipeResItem,
                                                                                  r'''$.id''',
                                                                                ).toString()
                                                                              ]),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                    ),
                                                                  if ((currentUserDocument?.favorites?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      false)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Colors
                                                                              .black,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .favorite,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'favorites': FieldValue.arrayUnion([
                                                                                getJsonField(
                                                                                  swipeResItem,
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
                                                                  if ((currentUserDocument?.toVisit?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      true)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Color(
                                                                              0xFF486344),
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .flag,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'toVisit': FieldValue.arrayRemove([
                                                                                getJsonField(
                                                                                  swipeResItem,
                                                                                  r'''$.id''',
                                                                                ).toString()
                                                                              ]),
                                                                            },
                                                                          ),
                                                                        });
                                                                      },
                                                                    ),
                                                                  if ((currentUserDocument?.toVisit?.toList() ??
                                                                              [])
                                                                          .contains(
                                                                              getJsonField(
                                                                        swipeResItem,
                                                                        r'''$.id''',
                                                                      ).toString()) ==
                                                                      false)
                                                                    FlutterFlowIconButton(
                                                                      borderRadius:
                                                                          100.0,
                                                                      buttonSize:
                                                                          40.0,
                                                                      fillColor:
                                                                          Colors
                                                                              .black,
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .flag,
                                                                        color: Colors
                                                                            .white,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      onPressed:
                                                                          () async {
                                                                        await currentUserReference!
                                                                            .update({
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'toVisit': FieldValue.arrayUnion([
                                                                                getJsonField(
                                                                                  swipeResItem,
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
                            ),
                          ],
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
