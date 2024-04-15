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
    // TODO: Fix using of s with get_it
    // final s = S.of(context);

    final topRepository = getIt.get<TopRepository>();

    return MultiBlocProvider(
      providers: [
        /// Data Loading Blocs
        BlocProvider(create: (_) => TopUpcomingLoadingCubit()),
        BlocProvider(create: (_) => TopAllLoadingCubit()),
      ],
      child: MultiBlocProvider(
        providers: [
          /// Anime Blocs
          BlocProvider(create: (_) => AnimeRecommendationsBloc()),
          BlocProvider(create: (_) => SeasonNowBloc()),

          /// Anime Top Blocs
          BlocProvider(create: (_) => TopAiringBloc()),

          BlocProvider(
            create: (context) => TopAllCubit(
              context,
              fetchFunction: topRepository.getAll,
              // TODO: Fix error_message
              // errorMessage: s.top_load_error,
            ),
          ),

          BlocProvider(
            create: (context) => TopUpcomingCubit(
              context,
              fetchFunction: topRepository.getUpcoming,
              // TODO: Fix error_message
              // errorMessage: s.top_load_error,
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
          title: 'BrujAnime',
          theme: kDarkTheme,
        ),
      ),
    );
  }
}
