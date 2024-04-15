import 'package:brujanime/blocs/blocs.dart';
import 'package:brujanime/data/repositories.dart';
import 'package:brujanime/generated/l10n.dart';
import 'package:brujanime/ui/theme/theme.dart';
import 'package:brujanime/utils/app_router.dart';
import 'package:brujanime/utils/getit.dart';
import 'package:brujanime/utils/typedefs/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final s = getIt.get<S>();

    final topRepository = getIt.get<TopRepository>();
    final recommendationsRepository = getIt.get<RecommendationsRepository>();
    final seasonsRepository = getIt.get<SeasonsRepository>();

    return MultiBlocProvider(
      providers: [
        /// Data Loading Blocs
        BlocProvider(create: (_) => TopUpcomingLoadingCubit()),
        BlocProvider(create: (_) => TopAllLoadingCubit()),
        BlocProvider(create: (_) => TopAiringLoadingCubit()),
        BlocProvider(create: (_) => RecommendationsLoadingCubit()),
        BlocProvider(create: (_) => SeasonNowLoadingCubit()),
      ],
      child: MultiBlocProvider(
        providers: [
          /// Season Anime Blocs
          BlocProvider(
            create: (context) => SeasonNowCubit(
              context,
              fetchFunction: seasonsRepository.now,
              errorMessage: s.season_now_load_error,
            ),
          ),

          /// Anime Top Blocs
          BlocProvider(
            create: (context) => TopAiringCubit(
              context,
              fetchFunction: topRepository.getAiring,
              errorMessage: s.top_load_error,
            ),
          ),

          BlocProvider(
            create: (context) => TopAllCubit(
              context,
              fetchFunction: topRepository.getAll,
              errorMessage: s.top_load_error,
            ),
          ),

          BlocProvider(
            create: (context) => TopUpcomingCubit(
              context,
              fetchFunction: topRepository.getUpcoming,
              errorMessage: s.top_load_error,
            ),
          ),

          /// Other Anime Blocs
          BlocProvider(
            create: (context) => RecommendationsCubit(
              context,
              fetchFunction: recommendationsRepository.getAll,
              errorMessage: s.top_load_error,
            ),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          title: 'Brujiko',
          theme: kDarkTheme,
        ),
      ),
    );
  }
}
