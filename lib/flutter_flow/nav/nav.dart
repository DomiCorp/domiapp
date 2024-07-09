import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

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

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? PrincipalcomloginWidget()
          : PrincipalsemloginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? PrincipalcomloginWidget()
              : PrincipalsemloginWidget(),
        ),
        FFRoute(
          name: 'sobresemlogin',
          path: '/sobresemlogin',
          builder: (context, params) => SobresemloginWidget(),
        ),
        FFRoute(
          name: 'Loginusuario',
          path: '/loginusuario',
          builder: (context, params) => LoginusuarioWidget(),
        ),
        FFRoute(
          name: 'esqueceusenha',
          path: '/esqueceusenha',
          builder: (context, params) => EsqueceusenhaWidget(),
        ),
        FFRoute(
          name: 'registro',
          path: '/registro',
          builder: (context, params) => RegistroWidget(),
        ),
        FFRoute(
          name: 'escolherprofissa',
          path: '/escolherprofissa',
          builder: (context, params) => EscolherprofissaWidget(),
        ),
        FFRoute(
          name: 'resetarsenha',
          path: '/resetarsenha',
          builder: (context, params) => ResetarsenhaWidget(),
        ),
        FFRoute(
          name: 'editarmeuperfil',
          path: '/editarmeuperfil',
          builder: (context, params) => EditarmeuperfilWidget(),
        ),
        FFRoute(
          name: 'principalcomlogin',
          path: '/principalcomlogin',
          builder: (context, params) => PrincipalcomloginWidget(),
        ),
        FFRoute(
          name: 'principalsemlogin',
          path: '/principalsemlogin',
          builder: (context, params) => PrincipalsemloginWidget(),
        ),
        FFRoute(
          name: 'suportedomi',
          path: '/suportedomi',
          builder: (context, params) => SuportedomiWidget(),
        ),
        FFRoute(
          name: 'termosdeservicoprofi',
          path: '/termosdeservicoprofi',
          builder: (context, params) => TermosdeservicoprofiWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionaledfisica',
          path: '/cadastroprofissionaledfisica',
          builder: (context, params) => CadastroprofissionaledfisicaWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalfisioterapia',
          path: '/cadastroprofissionalfisioterapia',
          builder: (context, params) =>
              CadastroprofissionalfisioterapiaWidget(),
        ),
        FFRoute(
          name: 'PerfilProfissionalfisio',
          path: '/perfilProfissionalfisio',
          builder: (context, params) => PerfilProfissionalfisioWidget(
            proffisiotera: params.getParam(
              'proffisiotera',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['fisioterapeuta'],
            ),
          ),
        ),
        FFRoute(
          name: 'cadastroprofissionalenferamgem',
          path: '/cadastroprofissionalenferamgem',
          builder: (context, params) => CadastroprofissionalenferamgemWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalestetica',
          path: '/cadastroprofissionalestetica',
          builder: (context, params) => CadastroprofissionalesteticaWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalmedicos',
          path: '/cadastroprofissionalmedicos',
          builder: (context, params) => CadastroprofissionalmedicosWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalmedveterinario',
          path: '/cadastroprofissionalmedveterinario',
          builder: (context, params) =>
              CadastroprofissionalmedveterinarioWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalnutricao',
          path: '/cadastroprofissionalnutricao',
          builder: (context, params) => CadastroprofissionalnutricaoWidget(),
        ),
        FFRoute(
          name: 'cadastroprofissionalpsicologo',
          path: '/cadastroprofissionalpsicologo',
          builder: (context, params) => CadastroprofissionalpsicologoWidget(),
        ),
        FFRoute(
          name: 'planos_de_pagamento',
          path: '/planosDePagamento',
          builder: (context, params) => PlanosDePagamentoWidget(),
        ),
        FFRoute(
          name: 'PerfilProfissionaledfisica',
          path: '/perfilProfissionaledfisica',
          builder: (context, params) => PerfilProfissionaledfisicaWidget(
            profedfisica: params.getParam(
              'profedfisica',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['edfisica'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalenfermagem',
          path: '/perfilProfissionalenfermagem',
          builder: (context, params) => PerfilProfissionalenfermagemWidget(
            profenfermagem: params.getParam(
              'profenfermagem',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['enfermagem'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalestetica',
          path: '/perfilProfissionalestetica',
          builder: (context, params) => PerfilProfissionalesteticaWidget(
            profestetica: params.getParam(
              'profestetica',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['estetica'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalmedicos',
          path: '/perfilProfissionalmedicos',
          builder: (context, params) => PerfilProfissionalmedicosWidget(
            profmedicos: params.getParam(
              'profmedicos',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['medicos'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalmedveterinario',
          path: '/perfilProfissionalmedveterinario',
          builder: (context, params) => PerfilProfissionalmedveterinarioWidget(
            profmedveterinario: params.getParam(
              'profmedveterinario',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['medveterinario'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalnutricao',
          path: '/perfilProfissionalnutricao',
          builder: (context, params) => PerfilProfissionalnutricaoWidget(
            profnutricao: params.getParam(
              'profnutricao',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['nutricao'],
            ),
          ),
        ),
        FFRoute(
          name: 'PerfilProfissionalpsicologia',
          path: '/perfilProfissionalpsicologia',
          builder: (context, params) => PerfilProfissionalpsicologiaWidget(
            profpsicologia: params.getParam(
              'profpsicologia',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['psicologia'],
            ),
          ),
        ),
        FFRoute(
          name: 'listadeFisioterapeuta',
          path: '/listadeFisioterapeuta',
          builder: (context, params) => ListadeFisioterapeutaWidget(),
        ),
        FFRoute(
          name: 'listadeEdfisica',
          path: '/listadeEdfisica',
          builder: (context, params) => ListadeEdfisicaWidget(),
        ),
        FFRoute(
          name: 'listadeenfermagem',
          path: '/listadeenfermagem',
          builder: (context, params) => ListadeenfermagemWidget(),
        ),
        FFRoute(
          name: 'listadeestetica',
          path: '/listadeestetica',
          builder: (context, params) => ListadeesteticaWidget(),
        ),
        FFRoute(
          name: 'listademedicos',
          path: '/listademedicos',
          builder: (context, params) => ListademedicosWidget(),
        ),
        FFRoute(
          name: 'listademedveterinario',
          path: '/listademedveterinario',
          builder: (context, params) => ListademedveterinarioWidget(),
        ),
        FFRoute(
          name: 'listadenutricao',
          path: '/listadenutricao',
          builder: (context, params) => ListadenutricaoWidget(),
        ),
        FFRoute(
          name: 'listadepsicologia',
          path: '/listadepsicologia',
          builder: (context, params) => ListadepsicologiaWidget(),
        ),
        FFRoute(
          name: 'ajudasuporte',
          path: '/ajudasuporte',
          builder: (context, params) => AjudasuporteWidget(),
        ),
        FFRoute(
          name: 'linkPagamentoanual',
          path: '/linkPagamentoanual',
          builder: (context, params) => LinkPagamentoanualWidget(),
        ),
        FFRoute(
          name: 'perfildeempresas',
          path: '/perfildeempresas',
          builder: (context, params) => PerfildeempresasWidget(
            empresas: params.getParam(
              'empresas',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['empresas'],
            ),
          ),
        ),
        FFRoute(
          name: 'suporteeditarperfilprofissional',
          path: '/suporteeditarperfilprofissional',
          builder: (context, params) => SuporteeditarperfilprofissionalWidget(),
        ),
        FFRoute(
          name: 'Termodeservicoprofissional',
          path: '/termodeservicoprofissional',
          builder: (context, params) => TermodeservicoprofissionalWidget(),
        ),
        FFRoute(
          name: 'planos_pagamento',
          path: '/planosPagamento',
          builder: (context, params) => PlanosPagamentoWidget(),
        ),
        FFRoute(
          name: 'pagamentoanual',
          path: '/pagamentoanual',
          builder: (context, params) => PagamentoanualWidget(),
        ),
        FFRoute(
          name: 'pagar_com_link',
          path: '/pagarComLink',
          builder: (context, params) => PagarComLinkWidget(),
        ),
        FFRoute(
          name: 'pagar_com_link_semestral',
          path: '/pagarComLinkSemestral',
          builder: (context, params) => PagarComLinkSemestralWidget(),
        ),
        FFRoute(
          name: 'pagamentosemestral',
          path: '/pagamentosemestral',
          builder: (context, params) => PagamentosemestralWidget(),
        ),
        FFRoute(
          name: 'linkPagamentosemestral',
          path: '/linkPagamentosemestral',
          builder: (context, params) => LinkPagamentosemestralWidget(),
        ),
        FFRoute(
          name: 'pagar_com_link_mensal',
          path: '/pagarComLinkMensal',
          builder: (context, params) => PagarComLinkMensalWidget(),
        ),
        FFRoute(
          name: 'pagamentomensal',
          path: '/pagamentomensal',
          builder: (context, params) => PagamentomensalWidget(),
        ),
        FFRoute(
          name: 'linkPagamentomensal',
          path: '/linkPagamentomensal',
          builder: (context, params) => LinkPagamentomensalWidget(),
        ),
        FFRoute(
          name: 'linkrenovarpagamentoanual',
          path: '/linkrenovarpagamentoanual',
          builder: (context, params) => LinkrenovarpagamentoanualWidget(),
        ),
        FFRoute(
          name: 'renovarpagamentoanual',
          path: '/renovarpagamentoanual',
          builder: (context, params) => RenovarpagamentoanualWidget(),
        ),
        FFRoute(
          name: 'pagamentopixanual',
          path: '/pagamentopixanual',
          builder: (context, params) => PagamentopixanualWidget(),
        ),
        FFRoute(
          name: 'linkpagamento_semestral',
          path: '/linkpagamentoSemestral',
          builder: (context, params) => LinkpagamentoSemestralWidget(),
        ),
        FFRoute(
          name: 'renovarpagamentosemestral',
          path: '/renovarpagamentosemestral',
          builder: (context, params) => RenovarpagamentosemestralWidget(),
        ),
        FFRoute(
          name: 'pagamentopixsemestral',
          path: '/pagamentopixsemestral',
          builder: (context, params) => PagamentopixsemestralWidget(),
        ),
        FFRoute(
          name: 'renovarpagamento_mensal',
          path: '/renovarpagamentoMensal',
          builder: (context, params) => RenovarpagamentoMensalWidget(),
        ),
        FFRoute(
          name: 'pixrenovarpagamento',
          path: '/pixrenovarpagamento',
          builder: (context, params) => PixrenovarpagamentoWidget(),
        ),
        FFRoute(
          name: 'linkpagamentomesnal',
          path: '/linkpagamentomesnal',
          builder: (context, params) => LinkpagamentomesnalWidget(),
        ),
        FFRoute(
          name: 'sobrelogin',
          path: '/sobrelogin',
          builder: (context, params) => SobreloginWidget(),
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
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

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

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
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
      collectionNamePath: collectionNamePath,
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/principalsemlogin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Ativo_14.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

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

  static TransitionInfo appDefault() => TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 300),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
