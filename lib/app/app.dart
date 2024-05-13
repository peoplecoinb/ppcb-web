// ignore_for_file: strict_raw_type, always_specify_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as bloc;
import 'package:get/get.dart' as getx;
import 'package:logger/logger.dart';
import 'blocs/application/application_cubit.dart';
import 'blocs/language/language_cubit.dart';
import 'blocs/language/language_select_state.dart';
import 'blocs/web3/web3_cubit.dart';
import 'blocs/theme/theme_cubit.dart';
import 'constants/constants.dart';
import 'routes/app_pages.dart';
import 'routes/app_route_delegate.dart';
import 'routes/app_route_infomation_parser.dart';
import 'routes/app_routes.dart';
import 'translations/app_translations.dart';
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
    getx.Get.put(ApplicationCubit(), permanent: true);
    getx.Get.put(ThemeCubit(), permanent: true);
    getx.Get.put(LanguageCubit(), permanent: true);
    getx.Get.put(Web3Cubit(), permanent: true);
    // getx.Get.put(ProfileCubit(), permanent: true);
    // getx.Get.put(AuthenticationCubit(), permanent: true);
    // getx.Get.put(LocalServerCubit()..firstCreateLocalServerAppClient(), permanent: true);
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
            bloc: getx.Get.find<LanguageCubit>(),
            listener: (BuildContext context, LanguageSelectState state) {
              getx.Get.updateLocale(state.locale);
            },
          ),
        ],
        child: bloc.BlocBuilder<ThemeCubit, ThemeState>(
          bloc: getx.Get.find<ThemeCubit>(),
          builder: (BuildContext context, ThemeState state) {
            // return getx.GetMaterialApp.router(
            //   debugShowCheckedModeBanner: false,
            //   theme: (state.mode == ThemeMode.light ? state.lightTheme : state.darkTheme),
            //   title: APP_NAME,
            //   getPages: AppPages.pages,
            //   // initialRoute: Routes.SPLASH,
            //   defaultTransition: getx.Transition.cupertino,
            //   locale: getx.Get.find<LanguageCubit>().state.locale,
            //   routeInformationParser: AppRouteInformationParser(
            //     initialRoute: Routes.home.route,
            //   ),
            //   routerDelegate: AppRouteDelegate(),
            //   translationsKeys: AppTranslation.translations,
            //   builder: (BuildContext context, Widget? child) {
            //     return LoadingFullScreen(
            //       child: child!,
            //       // child: NavigationScreen(key: key, child: child!,),
            //     );
            //   },
            // );
            return MaterialApp.router(
              routerConfig: AppPages.routes,
              title: APP_NAME,
              debugShowCheckedModeBanner: false,
              theme: (state.mode == ThemeMode.light ? state.lightTheme : state.darkTheme),
              // builder: (context, child) => LoadingFullScreen(
              //   child: child!,
              // ),
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
