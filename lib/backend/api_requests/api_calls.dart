import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Ansut Server Group Code

class AnsutServerGroup {
  static String baseUrl =
      'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337/api';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
  };
  static CalendrierMatchsCall calendrierMatchsCall = CalendrierMatchsCall();
  static ResultatsMatchsCall resultatsMatchsCall = ResultatsMatchsCall();
  static CalendrierHomeCall calendrierHomeCall = CalendrierHomeCall();
  static VillagesOfficielsCall villagesOfficielsCall = VillagesOfficielsCall();
  static VillagesNonOfficielsCall villagesNonOfficielsCall =
      VillagesNonOfficielsCall();
  static PhasesCall phasesCall = PhasesCall();
  static ClassemenCall classemenCall = ClassemenCall();
  static ClassementBCall classementBCall = ClassementBCall();
  static ClassementCCall classementCCall = ClassementCCall();
  static ClassementDCall classementDCall = ClassementDCall();
  static ClassementECall classementECall = ClassementECall();
  static TopMomentCall topMomentCall = TopMomentCall();
  static ClassementFCall classementFCall = ClassementFCall();
  static TextAttenteCall textAttenteCall = TextAttenteCall();
}

class CalendrierMatchsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Calendrier Matchs',
      apiUrl: '${AnsutServerGroup.baseUrl}/meets?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? group(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.group''',
      ));
  String? stade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.stadium''',
      ));
  String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.date''',
      ));
  String? heure(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.hours''',
      ));
  String? team1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team1''',
      ));
  String? team2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team2''',
      ));
  String? imageteam2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.flag_team2.data.attributes.url''',
      ));
  dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes''',
      );
  List<String>? imageteam1(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.flag_team1.data[:].attributes.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ResultatsMatchsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Resultats Matchs',
      apiUrl: '${AnsutServerGroup.baseUrl}/meet-results?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CalendrierHomeCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Calendrier Home',
      apiUrl: '${AnsutServerGroup.baseUrl}/meet-homes?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.ImageGlobal.data.attributes.url''',
      ));
  String? imgTeam2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team2_flag.data.attributes.url''',
      ));
  String? imgTeam1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team1_flag.data.attributes.url''',
      ));
  String? stade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Stadium_Home''',
      ));
  String? heure(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Hour_meet''',
      ));
  String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.date_meet''',
      ));
  String? textmeet(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.meetext''',
      ));
  String? team2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team2_name''',
      ));
  String? team1(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.team1_name''',
      ));
}

class VillagesOfficielsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'villages Officiels',
      apiUrl: '${AnsutServerGroup.baseUrl}/Villages?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.description''',
      ));
  String? activity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.activity''',
      ));
  String? nom(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Nomvillage''',
      ));
  String? lien(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.localisation_lienduvillage''',
      ));
  String? heure(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.DateEtHeureOuverture''',
      ));
  String? acces(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.droits_acces''',
      ));
  String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.imagevillage.data.attributes.url''',
      ));
}

class VillagesNonOfficielsCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Villages Non Officiels',
      apiUrl: '${AnsutServerGroup.baseUrl}/Village-non-officiels?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? village(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.NomVillage''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.description''',
      ));
  String? activity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Activity''',
      ));
  String? acces(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Droits_access''',
      ));
  String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.imageduvillage.data.attributes.url''',
      ));
}

class PhasesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Phases',
      apiUrl: '${AnsutServerGroup.baseUrl}/phases',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? phase(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.Types_phases''',
      ));
}

class ClassemenCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Classemen',
      apiUrl: '${AnsutServerGroup.baseUrl}/classements',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? team1(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.team1_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? team2(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.team2_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? team3(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.team3_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? team4(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.team4_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? point1(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Point1''',
        true,
      ) as List?;
  List? point2(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Point2''',
        true,
      ) as List?;
  List? point3(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Point3''',
        true,
      ) as List?;
  List? point4(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes.Point4''',
        true,
      ) as List?;
}

class ClassementBCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClassementB',
      apiUrl: '${AnsutServerGroup.baseUrl}/classement-bs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ClassementCCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClassementC',
      apiUrl: '${AnsutServerGroup.baseUrl}/classement-cs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ClassementDCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClassementD',
      apiUrl: '${AnsutServerGroup.baseUrl}/classement-ds',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ClassementECall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClassementE',
      apiUrl: '${AnsutServerGroup.baseUrl}/classement-es',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TopMomentCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Top Moment ',
      apiUrl:
          '${AnsutServerGroup.baseUrl}/Top-moments?populate=*&sort=updatedAt:desc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? titre(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.titre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? imgillustr(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.imageIllustrative.data.attributes.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? slide(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.Slide.data[:].attributes.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ClassementFCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ClassementF',
      apiUrl: '${AnsutServerGroup.baseUrl}/classement-fs',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TextAttenteCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TextAttente',
      apiUrl: '${AnsutServerGroup.baseUrl}/text-attentes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? text(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].attributes.text''',
      ));
}

/// End Ansut Server Group Code

class NewsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'News',
      apiUrl: 'https://test.s-p5.com/appbckk/ANSUT/public/getallinfos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List? titre(dynamic response) => getJsonField(
        response,
        r'''$.data[:].titre''',
        true,
      ) as List?;
  static List? description(dynamic response) => getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?;
  static List? image(dynamic response) => getJsonField(
        response,
        r'''$.data[:].image_url''',
        true,
      ) as List?;
}

class ClassementCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Classement',
      apiUrl: 'https://test.s-p5.com/appbckk/ANSUT/public/api/getallrankings',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static dynamic groupA(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.A''',
      );
  static dynamic groupB(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.B''',
      );
  static dynamic groupC(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.C''',
      );
  static dynamic groupD(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.D''',
      );
  static dynamic groupE(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.E''',
      );
  static dynamic groupF(dynamic response) => getJsonField(
        response,
        r'''$.groupedRankings.F''',
      );
}

class NewssCall {
  static Future<ApiCallResponse> call({
    dynamic? articlesJson,
  }) async {
    final articles = _serializeJson(articlesJson, true);

    return ApiManager.instance.makeApiCall(
      callName: 'Newss',
      apiUrl: 'https://test.s-p5.com/appbckk/ANSUT/public/getallinfos?limit=3',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static List<String>? titre(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].titre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class InfosCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Infos',
      apiUrl:
          'http://ansuthackathonprodweb-01.eastus.cloudapp.azure.com:1337/api/infos?populate=*&sort=updatedAt:desc',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 89436c1737224dc045dafcfdd1c498954202745bd6c785d3a43341bcdf937434124b69204946308cebdda8720cbacbc971e736ee1086da3485bdf6af612dbb6ea0a3846c87151be50fa81582c5b2f0dcc18778ca075fe783a5000edcb9d14c03a70bb0c849c6cd3097d3bbc7137d70825a1a296fa261485c7f80c3e644011068',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes''',
        true,
      ) as List?;
  static List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? attributes(dynamic response) => getJsonField(
        response,
        r'''$.data[:].attributes''',
        true,
      ) as List?;
  static List<String>? titre(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.titre''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? tag(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.tag''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.publishedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? images(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].attributes.picture.data.attributes.url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl: 'http://75.119.138.111:1337/api/infos',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class NewsRssCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'newsRss',
      apiUrl:
          'https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fwww.rfi.fr%2Ffr%2Fafrique-foot%2Frss',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }

  static List<String>? titre(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? date(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].pubDate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? image(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].thumbnail''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? data(dynamic response) => getJsonField(
        response,
        r'''$.items[:]''',
        true,
      ) as List?;
  static List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$.items[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class VillagesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'villages',
      apiUrl: 'http://75.119.138.111:1337/api/villages?populate=*',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class VillagesOffcielsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Villages Offciels',
      apiUrl:
          'http://ansuthackathonweb-01.eastus.cloudapp.azure.com:1337/api/villages?populate=*',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer 82c8a046ae67b8c4693de055c4bd904857ad58253cc849e81d4d93868588c9b8587242c825fb5bac48f9cd80c5135e864d8a108ab4582389d1a31570e575f07770b9cc9f1beb1acc85792addf07f53a4c6afc070a735dcbd5816d77421b81915e5063e4b91a34db621af8325cdc92c91b15b0c64e1301363e50f5850c5589030',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
