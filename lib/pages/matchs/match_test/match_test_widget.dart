import '/backend/api_requests/api_calls.dart';
import '/custom_elements/custom_navbar/custom_navbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'match_test_model.dart';
export 'match_test_model.dart';

class MatchTestWidget extends StatefulWidget {
  const MatchTestWidget({Key? key}) : super(key: key);

  @override
  _MatchTestWidgetState createState() => _MatchTestWidgetState();
}

class _MatchTestWidgetState extends State<MatchTestWidget>
    with TickerProviderStateMixin {
  late MatchTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchTestModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFEDEDED),
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('HomePage');
            },
          ),
          title: Text(
            'Matchs',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: Colors.white,
                  fontSize: 22.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Group_16_(1).png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          centerTitle: false,
          elevation: 2.0,
        ),
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Bebas Neue',
                                fontSize: 16.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelSmallFamily),
                              ),
                          unselectedLabelStyle: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Bebas Neue',
                                fontSize: 18.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .labelSmallFamily),
                              ),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: EdgeInsets.all(4.0),
                          tabs: [
                            Tab(
                              text: 'calendrier',
                            ),
                            Tab(
                              text: 'Résultats',
                            ),
                            Tab(
                              text: 'Classement',
                            ),
                            Tab(
                              text: 'Stades',
                            ),
                          ],
                          controller: _model.tabBarController,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 70.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future:
                                            AnsutServerGroup.phasesCall.call(),
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
                                                    Color(0xFF2256A3),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          final rowPhasesResponse =
                                              snapshot.data!;
                                          return Builder(
                                            builder: (context) {
                                              final eachPhases = getJsonField(
                                                rowPhasesResponse.jsonBody,
                                                r'''$.data''',
                                              ).toList().take(1).toList();
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    eachPhases.length,
                                                    (eachPhasesIndex) {
                                                  final eachPhasesItem =
                                                      eachPhases[
                                                          eachPhasesIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        eachPhasesItem,
                                                        r'''$.attributes.Types_phases''',
                                                      ).toString(),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Bebas Neue',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 20.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                    ),
                                                  );
                                                }),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: AnsutServerGroup
                                          .calendrierMatchsCall
                                          .call(),
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
                                                  Color(0xFF2256A3),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final columnCalendrierMatchsResponse =
                                            snapshot.data!;
                                        return Builder(
                                          builder: (context) {
                                            final eachMatchs = getJsonField(
                                              columnCalendrierMatchsResponse
                                                  .jsonBody,
                                              r'''$.data''',
                                            ).toList();
                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  eachMatchs.length,
                                                  (eachMatchsIndex) {
                                                final eachMatchsItem =
                                                    eachMatchs[eachMatchsIndex];
                                                return Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.95,
                                                        height: 120.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      16.0,
                                                                      16.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 54.0,
                                                                    height:
                                                                        36.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .network(
                                                                          'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337${getJsonField(
                                                                            eachMatchsItem,
                                                                            r'''$.attributes.flag_team1.data[:].attributes.url''',
                                                                          ).toString()}',
                                                                        ).image,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        eachMatchsItem,
                                                                        r'''$.attributes.team1''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            fontSize:
                                                                                26.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    getJsonField(
                                                                      eachMatchsItem,
                                                                      r'''$.attributes.hours''',
                                                                    ).toString().maybeHandleOverflow(
                                                                        maxChars:
                                                                            5),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Bebas Neue',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          fontSize:
                                                                              40.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      eachMatchsItem,
                                                                      r'''$.attributes.date''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF0C0707),
                                                                          fontSize:
                                                                              13.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        eachMatchsItem,
                                                                        r'''$.attributes.stadium''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            color:
                                                                                Color(0xFF0C0707),
                                                                            fontSize:
                                                                                16.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 60.0,
                                                                    height:
                                                                        35.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      image:
                                                                          DecorationImage(
                                                                        fit: BoxFit
                                                                            .cover,
                                                                        image: Image
                                                                            .network(
                                                                          'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337${getJsonField(
                                                                            eachMatchsItem,
                                                                            r'''$.attributes.flag_team2.data.attributes.url''',
                                                                          ).toString()}',
                                                                        ).image,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        eachMatchsItem,
                                                                        r'''$.attributes.team2''',
                                                                      ).toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Bebas Neue',
                                                                            fontSize:
                                                                                26.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future:
                                          AnsutServerGroup.phasesCall.call(),
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
                                                  Color(0xFF2256A3),
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final rowPhasesResponse =
                                            snapshot.data!;
                                        return Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  rowPhasesResponse.jsonBody,
                                                  r'''$.data[:].attributes.Types_phases''',
                                                ).toString(),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Bebas Neue',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 20.0,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily),
                                                    ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  FutureBuilder<ApiCallResponse>(
                                    future: AnsutServerGroup.resultatsMatchsCall.call(),
                                    builder: (context, snapshot) {
                                      // Personnalisez l'apparence de votre widget pendant le chargement.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                Color(0xFF2256A3),
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      final columnResultatsMatchsResponse = snapshot.data!;
                                      final scoredata = getJsonField(
                                        columnResultatsMatchsResponse.jsonBody,
                                        r'''$.data''',
                                      ).toList();

                                      // Ajoutez une condition pour vérifier si la liste scoredata est vide.
                                      if (scoredata.isEmpty) {
                                        return Center(
                                          child: Text(
                                            "Aucun match terminé",
                                            style: FlutterFlowTheme.of(context).bodyText1,
                                          ),
                                        );
                                      }

                                      return Builder(
                                        builder: (context) {
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(scoredata.length, (scoredataIndex) {
                                              final scoredataItem = scoredata[scoredataIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(context).width * 0.95,
                                                      height: 110.0,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.only(
                                                          bottomLeft: Radius.circular(10.0),
                                                          bottomRight: Radius.circular(10.0),
                                                          topLeft: Radius.circular(10.0),
                                                          topRight: Radius.circular(10.0),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Column(
                                                              mainAxisSize: MainAxisSize.max,
                                                              children: [
                                                                Container(
                                                                  width: 54.0,
                                                                  height: 36.0,
                                                                  decoration: BoxDecoration(
                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: Image.network(
                                                                        'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337${getJsonField(
                                                                          scoredataItem,
                                                                          r'''$.attributes.Team1_flag.data.attributes.url''',
                                                                        ).toString()}',
                                                                      ).image,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      scoredataItem,
                                                                      r'''$.attributes.Team1_name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Bebas Neue',
                                                                      fontSize: 26.0,
                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize: MainAxisSize.max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize: MainAxisSize.max,
                                                                  children: [
                                                                    Text(
                                                                      getJsonField(
                                                                        scoredataItem,
                                                                        r'''$.attributes.Team1_score''',
                                                                      ).toString().maybeHandleOverflow(maxChars: 5),
                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                        fontFamily: 'Bebas Neue',
                                                                        color: FlutterFlowTheme.of(context).error,
                                                                        fontSize: 40.0,
                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      ' - ',
                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                        fontFamily: 'Bebas Neue',
                                                                        color: Colors.black,
                                                                        fontSize: 40.0,
                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      getJsonField(
                                                                        scoredataItem,
                                                                        r'''$.attributes.Team2_score''',
                                                                      ).toString().maybeHandleOverflow(maxChars: 5),
                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                        fontFamily: 'Bebas Neue',
                                                                        color: FlutterFlowTheme.of(context).error,
                                                                        fontSize: 40.0,
                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    scoredataItem,
                                                                    r'''$.attributes.Date_meet''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    fontFamily: 'Poppins',
                                                                    color: Color(0xFF0C0707),
                                                                    fontSize: 13.0,
                                                                    fontWeight: FontWeight.w500,
                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    scoredataItem,
                                                                    r'''$.attributes.Stades_Meet''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                    fontFamily: 'Bebas Neue',
                                                                    color: Color(0xFF0C0707),
                                                                    fontSize: 16.0,
                                                                    fontWeight: FontWeight.w500,
                                                                    useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize: MainAxisSize.max,
                                                              children: [
                                                                Container(
                                                                  width: 60.0,
                                                                  height: 35.0,
                                                                  decoration: BoxDecoration(
                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                    image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: Image.network(
                                                                        'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337${getJsonField(
                                                                          scoredataItem,
                                                                          r'''$.attributes.Team2_flag.data.attributes.url''',
                                                                        ).toString()}',
                                                                      ).image,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      scoredataItem,
                                                                      r'''$.attributes.Team2_name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                      fontFamily: 'Bebas Neue',
                                                                      fontSize: 26.0,
                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                          );
                                        },
                                      );
                                    },
                                  ),

                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 100.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'A',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classemenCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassemenResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassemenResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classemenCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassemenResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassemenResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classemenCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassemenResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassemenResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classemenCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassemenResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassemenResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'B',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementBCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementBResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementBResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementBCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementBResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementBResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementBCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementBResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementBResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementBCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementBResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementBResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementBResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'C',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementCCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementCResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementCResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementCCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementCResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementCResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementCCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementCResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementCResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementCCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementCResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementCResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementCResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'D',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementDCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementDResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementDResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementDCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementDResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementDResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementDCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementDResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementDResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementDCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementDResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementDResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementDResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'E',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementECall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementEResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementEResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementECall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementEResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementEResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementECall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementEResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementEResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementECall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementEResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementEResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementEResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              height: 189.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'GROUPE ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                              Text(
                                                                'F',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          380.0,
                                                                      height:
                                                                          30.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                      ),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children:
                                                                              [
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(0.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'EQUIPES',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'MJ',
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                          color: Colors.white,
                                                                                          fontSize: 12.0,
                                                                                          useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'POINTS',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: Colors.white,
                                                                                            fontSize: 12.0,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(width: 60.0)).addToStart(SizedBox(width: 1.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(SizedBox(
                                                                    width:
                                                                        60.0))
                                                                .addToStart(
                                                                    SizedBox(
                                                                        width:
                                                                            1.0)),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: FutureBuilder<
                                                                  ApiCallResponse>(
                                                                future: AnsutServerGroup
                                                                    .classemenCall
                                                                    .call(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          valueColor:
                                                                              AlwaysStoppedAnimation<Color>(
                                                                            Color(0xFF2256A3),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  final rowClassemenResponse =
                                                                      snapshot
                                                                          .data!;
                                                                  return Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 380.0,
                                                                              decoration: BoxDecoration(
                                                                                color: Colors.white,
                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementFCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementFResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementFResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team1_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team1_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classemenCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassemenResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassemenResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team2_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassemenResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team2_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementFCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementFResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementFResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team3_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team3_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 5.0),
                                                                                    child: FutureBuilder<ApiCallResponse>(
                                                                                      future: AnsutServerGroup.classementFCall.call(),
                                                                                      builder: (context, snapshot) {
                                                                                        // Customize what your widget looks like when it's loading.
                                                                                        if (!snapshot.hasData) {
                                                                                          return Center(
                                                                                            child: SizedBox(
                                                                                              width: 50.0,
                                                                                              height: 50.0,
                                                                                              child: CircularProgressIndicator(
                                                                                                valueColor: AlwaysStoppedAnimation<Color>(
                                                                                                  Color(0xFF2256A3),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                        final rowClassementFResponse = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.35,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_name''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                        fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                                        fontWeight: FontWeight.bold,
                                                                                                        useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Text(
                                                                                                getJsonField(
                                                                                                  rowClassementFResponse.jsonBody,
                                                                                                  r'''$.data[:].attributes.team4_playing''',
                                                                                                ).toString(),
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                              ),
                                                                                            ),
                                                                                            Container(
                                                                                              width: MediaQuery.sizeOf(context).width * 0.2,
                                                                                              height: MediaQuery.sizeOf(context).height * 0.03,
                                                                                              decoration: BoxDecoration(
                                                                                                border: Border.all(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              child: Align(
                                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                                child: Text(
                                                                                                  getJsonField(
                                                                                                    rowClassementFResponse.jsonBody,
                                                                                                    r'''$.data[:].attributes.team4_point''',
                                                                                                  ).toString(),
                                                                                                  style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ]
                                                                        .divide(SizedBox(
                                                                            width:
                                                                                60.0))
                                                                        .addToStart(SizedBox(
                                                                            width:
                                                                                1.0)),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/felicia.jpg',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade Felix Houphouet Boigny',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeAbidjan');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Plateau, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/stade_ebimpe_3.jpeg',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade Alassane Ouattara',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeEbimpe');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Anyama, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/GALERIESTDYAKRO05062022.jpeg',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade Charles Konan Banny ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeYakro');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Yamoussoukro, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/bouake.png',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade de la paix',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeBouake');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Bouake, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/Stade-Laurent-Pokou-San-Pedro-CAN-2023.webp',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade Laurent Pokou ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeSanPedro');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'San Pedro, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 8.0, 16.0, 12.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(16.0),
                                                child: Image.network(
                                                  'https://api.s-p5.com/wp-content/uploads/2023/12/Une-visualisation-3D-du-futur-stade-de-Korhpgp.jpg',
                                                  width: double.infinity,
                                                  height: 172.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Stade Amadou gon coulibaly',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Bebas Neue',
                                                          fontSize: 20.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLargeFamily),
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
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
                                                            'StadeKorhogo');
                                                      },
                                                      child: Text(
                                                        'Voir plus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLargeFamily,
                                                                  fontSize:
                                                                      14.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleLargeFamily),
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 4.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      'Korhogo, Côte d\'Ivoire',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium,
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
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.customNavbarModel,
                updateCallback: () => setState(() {}),
                child: CustomNavbarWidget(
                  pageName: 'matchss',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
