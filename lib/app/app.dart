// ignore_for_file: strict_raw_type, always_specify_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import '../generated/l10n.dart';
import 'blocs/application/application_cubit.dart';
import 'blocs/language/language_cubit.dart';
import 'blocs/language/language_select_state.dart';
import 'blocs/web3/web3_cubit.dart';
import 'blocs/theme/theme_cubit.dart';
import 'constants/constants.dart';
import 'routes/app_pages.dart';
import 'ui/ui.dart';

class App extends StatefulWidget {
  const App({super.key});

  // static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver implements bloc.BlocObserver {
  final Logger logger = Logger();

  void _initialBlocs() {
    GetIt.I.registerSingleton(ApplicationCubit());
    GetIt.I.registerSingleton(ThemeCubit());
    GetIt.I.registerSingleton(LanguageCubit());
    GetIt.I.registerSingleton(Web3Cubit());
  }

  Future<void> preloadAsset() async {
    await Future.wait(<Future>[
      precacheImage(AssetImage(AppImages.png('banner_shape01')), context),
      precacheImage(AssetImage(AppImages.png('banner_shape02')), context),
    ]);
  }

  @override
  void initState() {
    super.initState();
    bloc.Bloc.observer = this;
    _initialBlocs();
    WidgetsBinding.instance.addObserver(this);
    // AppDeviceInfo.init();
    // FirebaseService().init();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeDependencies() async {
    await preloadAsset();
    super.didChangeDependencies();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    Logger().d('ChangeAppLifecycleState: $state');
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: bloc.MultiBlocListener(
        listeners: <bloc.BlocListener>[
          bloc.BlocListener<LanguageCubit, LanguageSelectState>(
            bloc: GetIt.I.get<LanguageCubit>(),
            listener: (BuildContext context, LanguageSelectState state) {
              S.load(state.locale);
            },
          ),
        ],
        child: bloc.BlocBuilder<ThemeCubit, ThemeState>(
          bloc: GetIt.I.get<ThemeCubit>(),
          builder: (BuildContext context, ThemeState state) {
            return MaterialApp.router(
              routerConfig: AppPages.routes,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              title: APP_NAME,
              debugShowCheckedModeBanner: false,
              theme: (state.mode == ThemeMode.light ? state.lightTheme : state.darkTheme),
              builder: (context, child) {
                return LoadingFullScreen(
                  child: child!,
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void onChange(bloc.BlocBase bloc, bloc.Change change) {
    logger.d('onChange: $bloc - $change');
  }

  @override
  void onClose(bloc.BlocBase bloc) {
    logger.d('onClose: $bloc');
  }

  @override
  void onCreate(bloc.BlocBase bloc) {
    logger.d('onCreate: $bloc with ${bloc.state}');
  }

  @override
  void onError(bloc.BlocBase bloc, Object error, StackTrace stackTrace) {
    logger.d('onError: $bloc - $error - $stackTrace');
  }

  @override
  void onEvent(bloc.Bloc bloc, Object? event) {
    logger.d('onEvent: $event');
  }

  @override
  void onTransition(bloc.Bloc bloc, bloc.Transition transition) {
    logger.d('onTransition: $bloc - $transition');
  }
}
