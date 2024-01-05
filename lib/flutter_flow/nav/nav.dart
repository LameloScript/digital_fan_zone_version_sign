import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Color(0xFF2256A3),
                child: Center(
                  child: Image.asset(
                    'assets/images/splash.png',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : Onboarding1Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Color(0xFF2256A3),
                    child: Center(
                      child: Image.asset(
                        'assets/images/splash.png',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Onboarding1Widget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'parcours',
          path: '/parcours',
          builder: (context, params) => ParcoursWidget(),
        ),
        FFRoute(
          name: 'guides',
          path: '/guides',
          builder: (context, params) => GuidesWidget(),
        ),
        FFRoute(
          name: 'Tourisme',
          path: '/tourisme',
          builder: (context, params) => TourismeWidget(),
        ),
        FFRoute(
          name: 'security',
          path: '/security',
          builder: (context, params) => SecurityWidget(),
        ),
        FFRoute(
          name: 'Tourisme_Abidjan',
          path: '/tourismeAbidjan',
          builder: (context, params) => TourismeAbidjanWidget(),
        ),
        FFRoute(
          name: 'NewsDetails',
          path: '/newsDetails',
          builder: (context, params) => NewsDetailsWidget(
            newsDetails: params.getParam('newsDetails', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Tourisme_Bouake',
          path: '/tourismeBouake',
          builder: (context, params) => TourismeBouakeWidget(),
        ),
        FFRoute(
          name: 'Tourisme_Korhogo',
          path: '/tourismeKorhogo',
          builder: (context, params) => TourismeKorhogoWidget(),
        ),
        FFRoute(
          name: 'Tourisme_SanPedro',
          path: '/tourismeSanPedro',
          builder: (context, params) => TourismeSanPedroWidget(),
        ),
        FFRoute(
          name: 'Tourisme_Yakro',
          path: '/tourismeYakro',
          builder: (context, params) => TourismeYakroWidget(),
        ),
        FFRoute(
          name: 'trivia_game',
          path: '/triviaGame',
          builder: (context, params) => TriviaGameWidget(),
        ),
        FFRoute(
          name: 'Dico_Noushi',
          path: '/dicoNoushi',
          builder: (context, params) => DicoNoushiWidget(
            test: params.getParam('test', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'LaRoutedesRois',
          path: '/laRoutedesRois',
          builder: (context, params) => LaRoutedesRoisWidget(),
        ),
        FFRoute(
          name: 'LaRoutedesElephants',
          path: '/laRoutedesElephants',
          builder: (context, params) => LaRoutedesElephantsWidget(),
        ),
        FFRoute(
          name: 'LaRoutedesEsclaves',
          path: '/laRoutedesEsclaves',
          builder: (context, params) => LaRoutedesEsclavesWidget(),
        ),
        FFRoute(
          name: 'CityTrip',
          path: '/cityTrip',
          builder: (context, params) => CityTripWidget(),
        ),
        FFRoute(
          name: 'StadeAbidjan',
          path: '/stadeAbidjan',
          builder: (context, params) => StadeAbidjanWidget(),
        ),
        FFRoute(
          name: 'StadeBouake',
          path: '/stadeBouake',
          builder: (context, params) => StadeBouakeWidget(),
        ),
        FFRoute(
          name: 'StadeKorhogo',
          path: '/stadeKorhogo',
          builder: (context, params) => StadeKorhogoWidget(),
        ),
        FFRoute(
          name: 'StadeYakro',
          path: '/stadeYakro',
          builder: (context, params) => StadeYakroWidget(),
        ),
        FFRoute(
          name: 'StadeEbimpe',
          path: '/stadeEbimpe',
          builder: (context, params) => StadeEbimpeWidget(),
        ),
        FFRoute(
          name: 'StadeSanPedro',
          path: '/stadeSanPedro',
          builder: (context, params) => StadeSanPedroWidget(),
        ),
        FFRoute(
          name: 'Historique',
          path: '/historique',
          builder: (context, params) => HistoriqueWidget(),
        ),
        FFRoute(
          name: 'News',
          path: '/News',
          builder: (context, params) => NewsWidget(),
        ),
        FFRoute(
          name: 'NewsDetailsAfrique',
          path: '/newsDetailsAfrique',
          builder: (context, params) => NewsDetailsAfriqueWidget(
            newsDetailsAfrique:
                params.getParam('newsDetailsAfrique', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'about',
          path: '/about',
          builder: (context, params) => AboutWidget(),
        ),
        FFRoute(
          name: 'Can2023',
          path: '/can2023',
          builder: (context, params) => Can2023Widget(),
        ),
        FFRoute(
          name: 'rempliformulaireOK',
          path: '/rempliformulaireOK',
          builder: (context, params) => RempliformulaireOKWidget(),
        ),
        FFRoute(
          name: 'choice',
          path: '/choice',
          builder: (context, params) => ChoiceWidget(),
        ),
        FFRoute(
          name: 'carte',
          path: '/carte',
          builder: (context, params) => CarteWidget(),
        ),
        FFRoute(
          name: 'VillagesOfficiels',
          path: '/villagesOfficiels',
          builder: (context, params) => VillagesOfficielsWidget(),
        ),
        FFRoute(
          name: 'villageDetails',
          path: '/villageDetails',
          builder: (context, params) => VillageDetailsWidget(
            officiel: params.getParam('officiel', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'villageDetailsNonOfficiels',
          path: '/villageDetailsNonOfficiels',
          builder: (context, params) => VillageDetailsNonOfficielsWidget(
            nonofficiel: params.getParam('nonofficiel', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'Onboarding1',
          path: '/onboarding1',
          builder: (context, params) => Onboarding1Widget(),
        ),
        FFRoute(
          name: 'HomePageCopy',
          path: '/homePageCopy',
          builder: (context, params) => HomePageCopyWidget(
            test: params.getParam('test', ParamType.JSON),
          ),
        ),
        FFRoute(
          name: 'choiceCopy',
          path: '/choiceCopy',
          builder: (context, params) => ChoiceCopyWidget(),
        ),
        FFRoute(
          name: 'carteCopy',
          path: '/carteCopy',
          builder: (context, params) => CarteCopyWidget(),
        ),
        FFRoute(
          name: 'carteCopy2',
          path: '/carteCopy2',
          builder: (context, params) => CarteCopy2Widget(),
        ),
        FFRoute(
          name: 'matchTest',
          path: '/matchTest',
          builder: (context, params) => MatchTestWidget(),
        ),
        FFRoute(
          name: 'Onboarding2',
          path: '/onboarding2',
          builder: (context, params) => Onboarding2Widget(),
        ),
        FFRoute(
          name: 'Onboarding3',
          path: '/onboarding3',
          builder: (context, params) => Onboarding3Widget(),
        ),
        FFRoute(
          name: 'QuizzStadium',
          path: '/quizzStadium',
          builder: (context, params) => QuizzStadiumWidget(),
        ),
        FFRoute(
          name: 'Ouestlestade',
          path: '/ouestlestade',
          builder: (context, params) => OuestlestadeWidget(),
        ),
        FFRoute(
          name: 'Trouvelenomdesstades',
          path: '/trouvelenomdesstades',
          builder: (context, params) => TrouvelenomdesstadesWidget(),
        ),
        FFRoute(
          name: 'constructionsdesstades',
          path: '/constructionsdesstades',
          builder: (context, params) => ConstructionsdesstadesWidget(),
        ),
        FFRoute(
          name: 'capacitdesstades',
          path: '/capacitdesstades',
          builder: (context, params) => CapacitdesstadesWidget(),
        ),
        FFRoute(
          name: 'Abouts',
          path: '/abouts',
          builder: (context, params) => AboutsWidget(),
        ),
        FFRoute(
          name: 'VillagesNonOfficiels',
          path: '/villagesNonOfficiels',
          builder: (context, params) => VillagesNonOfficielsWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
